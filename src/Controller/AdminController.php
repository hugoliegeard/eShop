<?php


namespace App\Controller;

use App\Entity\Product;
use App\Form\ProductForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

/**
 * Class AdminController
 * @package App\Controller
 * @Route("/admin")
 */
class AdminController extends AbstractController
{

    /**
     * @Route("/product/add", name="product_add", methods={"GET|POST"})
     * @param Request $request
     * @param SluggerInterface $slugger
     * @return Response
     */
    public function addProduct(Request $request, SluggerInterface $slugger)
    {

        # Création d'un nouveau produit
        $product = new Product();

        # Création du Formulaire
        $form = $this->createForm(ProductForm::class, $product)
            ->handleRequest($request);

        # Traitement du Formulaire
        if ($form->isSubmitted() && $form->isValid()) {

            # Génération de l'alias
            $product->setAlias($slugger->slug($product->getName()));

            # Image temporaire
            # TODO: Upload de l'image
            $product->setImage('https://lorempixel.com/640/480/?29698');

            # Sauvegarde en BDD
            $em = $this->getDoctrine()->getManager();
            $em->persist($product);
            $em->flush();

            # TODO: Notification
            # TODO: Redirection

        }

        return $this->render("admin/add-product.html.twig", [
            'form' => $form->createView()
        ]);
    }
}