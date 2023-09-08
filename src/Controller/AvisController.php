<?php

namespace App\Controller;

use App\Entity\Avis;
use App\Form\AvisType;
use App\Form\ChambreType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AvisController extends AbstractController
{
    #[Route('/avis', name: 'app_avis')]
    public function index(): Response
    {
        return $this->render('avis/index.html.twig');
    }
    
    // #[Route('/avis/form', name: 'app_avis_form')]
    // public function form(): Response
    // {
    //     return $this->render('avis/form.html.twig');
    // }
    // creation de la route form avis
    // creation de la fonction ajout du formulair avis
    #[Route('/avis/form', name:'avis_ajout')]
    //IMPORTER LES CLASS  HHTPFONDATION ENTITYManager
    public function ajout(Request $request, EntityManagerInterface $manager) 

   {
       $avis = new Avis;
       // * je crée une variable dans laquel je stock mon formulaire créée grace a createForm() et a son formBuilder (ChambreType)
       $form = $this->createForm(AvisType::class, $avis);
       $form->handleRequest($request);
       if($form->isSubmitted() && $form->isValid())
       {
           //* persist() préparer les requetes SQL par rapport a l'objet qu'on lui donne en paramètre
           $manager->persist($avis);
           //* flush() execute toute les requêtes 
           $manager->flush();
           return $this->redirectToRoute('app_avis');
       }

       return $this->render('avis/index.html.twig', [
           'formAvis' => $form,
       ]);
   }

    //
    
    // #[Route('/avis/show', name: 'app_avis_show')]
    // public function show(): Response
    // {
    //     return $this->render('avis/show.html.twig');
    // }


}
