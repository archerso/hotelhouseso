<?php

namespace App\Controller;

use App\Entity\Chambre;
use App\Form\ChambreType;
use App\Repository\ChambreRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ChambreController extends AbstractController
{
    #[Route('/chambre', name: 'app_chambre')]
    public function index(): Response
    {
        return $this->render('chambre/index.html.twig', [
            'controller_name' => 'ChambreController',
        ]);
    }
// creation de la route home=accueil
    #[Route('/', name: 'home')]
    public function home(): Response
    {
        return $this->render('chambre/index.html.twig');
    }
    
    // creation de la route du formulaire pour les chambres
    #[Route('/jegere/form/chambre', name: 'app_formchambre')]
    public function form(ChambreRepository $repo): Response
    {
      
      // ! formulaire chambre
          
              $chambre = $repo->findAll();
              return $this->render('chambre/index.html.twig', [
                  'items' => $chambre,
              ]);
          
      
    }
    // creation de la fonction ajout du formulair e chambre
          #[Route('/jegere/form/chambre/ajout', name:'chambre_ajout')]
           public function ajout(Request $request, EntityManagerInterface $manager) 

          {
              $chambre = new Chambre;
              // * je crée une variable dans laquel je stock mon formulaire créée grace a createForm() et a son formBuilder (ChambreType)
              $form = $this->createForm(ChambreType::class, $chambre);
      
              $form->handleRequest($request);
      
              if($form->isSubmitted() && $form->isValid())
              {
                  //* persist() préparer les requetes SQL par rapport a l'objet qu'on lui donne en paramètre
                  $manager->persist($chambre);
                  //* flush() execute toute les requêtes 
                  $manager->flush();
                  return $this->redirectToRoute('app_formchambre');
              }
      
              return $this->render('chambre/formchambre.html.twig', [
                  'formChambre' => $form,
              ]);
          }
}