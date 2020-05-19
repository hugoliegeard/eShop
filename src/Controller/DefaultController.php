<?php


namespace App\Controller;


use App\Entity\Category;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
    /**
     * @Route("/", name="default_home", methods={"GET"})
     * @return Response
     */
    public function home()
    {
        $products = $this->getDoctrine()
            ->getRepository(Product::class)
            ->findBy([], ['id' => 'DESC'], 10);

        return $this->render("default/home.html.twig", [
            'products' => $products
        ]);
    }

    public function menu()
    {
        # Récupération des categories
        $categories = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findAll();

        return $this->render('components/_nav.html.twig', [
            'categories' => $categories
        ]);
    }
}