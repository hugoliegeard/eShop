<?php

namespace App\DataFixtures;

use App\Entity\Category;
use App\Entity\Product;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Liior\Faker\Prices;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\String\Slugger\SluggerInterface;

class AppFixtures extends Fixture
{

    /**
     * @var UserPasswordEncoderInterface
     */
    private $encoder;
    /**
     * @var SluggerInterface
     */
    private $slugger;

    public function __construct(UserPasswordEncoderInterface $encoder,
                                SluggerInterface $slugger)
    {
        $this->encoder = $encoder;
        $this->slugger = $slugger;
    }

    /**
     * @param ObjectManager $manager
     */
    public function load(ObjectManager $manager)
    {

        # Préparation de Faker
        $faker = Factory::create();
        $faker->addProvider(new Prices($faker));

        # ------------------------------------- LES CATEGORIES
        $category = new Category();
        $category->setName("Informatique")->setAlias('informatique');
        $manager->persist($category);

        $category = new Category();
        $category->setName("Livres")->setAlias('livres');
        $manager->persist($category);

        $category = new Category();
        $category->setName("High-Tech")->setAlias('hight-tech');
        $manager->persist($category);

        $category = new Category();
        $category->setName("Cuisine et Maison")->setAlias('cuisine-maison');
        $manager->persist($category);

        $manager->flush();

        # ------------------------------------- LES UTILISATEURS

        $user = new User('ROLE_ADMIN');
        $user->setFirstname('Hugo');
        $user->setLastname('LIEGEARD');
        $user->setEmail('admin@eshop.com');
        $user->setPassword(
            $this->encoder->encodePassword($user, 'test')
        );
        $manager->persist($user);

        // create 20 users! Bam!
        for ($i = 0; $i < 20; $i++) {
            $user = new User();
            $user->setFirstname($faker->firstName);
            $user->setLastname($faker->lastName);
            $user->setEmail($faker->email);
            $user->setPassword(
              $this->encoder->encodePassword($user, 'test')
            );
            $manager->persist($user);
        }

        $manager->flush();

        # ------------------------------------- LES PRODUITS

        // create 50 product! Bam!
        $user = $manager->getRepository(User::class)->findOneByEmail('admin@eshop.com');
        for ($i = 0; $i < 50; $i++) {
            $product = new Product();
            $product->setName($faker->sentence(6));
            $product->setAlias(
              $this->slugger->slug(
                  $product->getName()
              )
            );
            $product->setDescription($faker->text);
            $product->setPrice($faker->price());
            $product->setUser($user);
            $product->setImage($faker->imageUrl());
            $manager->persist($product);
        }

        $manager->flush();
    }
}
