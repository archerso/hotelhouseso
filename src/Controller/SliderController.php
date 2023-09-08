<?php

namespace App\Controller;

use App\Entity\Slider;
use App\Form\SliderType;
use App\Repository\SliderRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SliderController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(SliderRepository $repo): Response
    {
        $sliders = $repo->findAll();
        return $this->render('slider/index.html.twig', [
            'sliders'=> $sliders,
        ]);
    }

        // creation de la fonction ajout du formulair e chambre
        #[Route('/slider/form', name:'form_slider')]
        public function ajout(Request $request, EntityManagerInterface $manager) 

       {
           $slider = new Slider;
           // * je crée une variable dans laquel je stock mon formulaire créée grace a createForm() et a son formBuilder (ChambreType)
           $form = $this->createForm(SliderType::class);
           return $this->render('slider/formslider.html.twig', [
            'formslider' => $form,
           ]);
   
           
}
}