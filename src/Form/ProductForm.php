<?php


namespace App\Form;


use App\Entity\Category;
use App\Entity\Product;
use App\Entity\User;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductForm extends AbstractType
{
    /**
     * Création du Formulaire
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            ->add('description', TextareaType::class)
            ->add('price', TextType::class)
            ->add('image', FileType::class)
            ->add('categories', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'name',
                'multiple' => true,
                'label' => false,
            ])
            ->add('user', EntityType::class, [
                'class' => User::class,
                'choice_label' => 'firstname',
                'label' => false,
            ])
            ->add('submit', SubmitType::class)
        ;
    }

    /**
     * Configuration des options du formulaire
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Product::class
        ]);
    }

    /**
     * Ajouter un préfixe au balise HTML
     * @return string
     */
    public function getBlockPrefix()
    {
        return "product";
    }

}