<?php


namespace App\Controller;


use App\Entity\User;
use App\Form\RegistrationForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

/**
 * Class UserController
 * @package App\Controller
 * @Route("/user")
 */
class UserController extends AbstractController
{
    /**
     * Page d'inscription
     * @Route("/register", name="user_register", methods={"GET|POST"})
     * @param Request $request
     * @param UserPasswordEncoderInterface $encoder
     * @return Response
     */
    public function register(Request $request,
                             UserPasswordEncoderInterface $encoder)
    {
        # Création d'un Utilisateur
        $user = new User();

        # Création du Formulaire
        $form = $this->createForm(RegistrationForm::class, $user)
            ->handleRequest($request);

        # Traitement du formulaire
        if ($form->isSubmitted() && $form->isValid()) {

            # Encodage du mot de passe
            $user->setPassword(
                $encoder->encodePassword(
                    $user,
                    $user->getPassword()
                )
            );

            # Insertion en BDD
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            # TODO : Notification

            # Redirection
            return $this->redirectToRoute("user_login");

        }

        # Affichage dans la vue
        return $this->render("user/register.html.twig", [
            'form' => $form->createView()
        ]);
    }

    /**
     * Page de Connexion
     * @Route("/login", name="user_login", methods={"GET|POST"})
     * @param AuthenticationUtils $authenticationUtils
     * @return Response
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // Redirection si déjà connecté.
        if ($this->getUser()) {
            return $this->redirectToRoute('default_home');
        }

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('user/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    /**
     * Page de Déconnexion
     * @Route("/logout", name="user_logout", methods={"GET"})
     */
    public function logout()
    {
    }

    /**
     * Page Profil d'un Utilisateur
     * @Route("/profil", name="user_profil", methods={"GET"})
     * @return Response
     */
    public function profil()
    {
        // Redirection si pas connecté
        if (!$this->getUser()) {
            return $this->redirectToRoute('user_login');
        }

        return $this->render('user/profil.html.twig');
    }

    /**
     * Modification des données d'un utilisateur
     * @Route("/profil/edit", name="user_profil_edit", methods={"GET|POST"})
     * @param Request $request
     * @return Response
     */
    public function editProfil(Request $request)
    {
        # Récupération des données du user connecté
        $user = $this->getUser();

        # Récupération du formulaire
        $form = $this->createForm(RegistrationForm::class, $user)
            ->handleRequest($request);

        # Traitement du Formulaire
        if ($form->isSubmitted() && $form->isValid()) {

            $em = $this->getDoctrine()->getManager();
            $em->flush();

        }

        # Affichage dans la vue
        return $this->render("user/profil-edit.html.twig", [
            'form' => $form->createView()
        ]);
    }

}