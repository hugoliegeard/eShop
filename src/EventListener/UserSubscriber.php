<?php


namespace App\EventListener;


use App\Entity\User;
use Doctrine\Common\EventSubscriber;
use Doctrine\ORM\Events;
use Doctrine\Persistence\Event\LifecycleEventArgs;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;

/**
 * Class UserSubscriber
 * A l'inscription d'un utilisateur,
 * on lui envoi un email.
 * @package App\EventListener
 */
class UserSubscriber implements EventSubscriber
{

    /**
     * @var MailerInterface
     */
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    /**
     * Returns an array of events this subscriber wants to listen to.
     *
     * @return string[]
     */
    public function getSubscribedEvents()
    {
        return [
            Events::postPersist
        ];
    }

    public function postPersist(LifecycleEventArgs $args)
    {
//        $this->sendWelcomeEmail($args);
    }

    private function sendWelcomeEmail(LifecycleEventArgs $args)
    {
        $user = $args->getObject();

        // if this subscriber only applies to certain entity types,
        // add some code to check the entity type as early as possible
        if (!$user instanceof User) {
            return;
        }

        # Envoi d'un Email
        $email = (new Email())
            ->from('registration@eshop.com')
            ->to($user->getEmail())
            ->subject('You are now an eShop Member !')
            ->html('<p>'. $user->getFirstname() .', Welcome to your eShop market !</p>');

        $this->mailer->send($email);

    }
}