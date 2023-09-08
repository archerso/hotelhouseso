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
    #[Route('/jegere/gestion/chambre', name: 'app_gestion_chambre')]
    public function index(ChambreRepository $repo): Response
    {
        $chambres = $repo->findAll();
        // c'est juste pour l'arborescence n'influt pour la securité
        return $this->render('admin/gestion.html.twig', [
            'chambres' => $chambres,
        ]);
    }

// creation de la route du formulaire pour les chambres
#[Route('/', name: 'home')]
    // #[Route('/jegere/form/chambre', name: 'app_formchambre')]
    public function form(ChambreRepository $repo): Response
    {
      
      // ! formulaire chambre
          
              $chambres = $repo->findAll();
              return $this->render('chambre/index.html.twig', [
                  'chambres' => $chambres,
              ]);
          
    }
    // creation de la fonction ajout du formulair e chambre
          #[Route('/jegere/form/chambre/ajout', name:'chambre_ajout')]
          #[Route('/jegere/form/chambre/modif/{id}', name:'chambre_modif')]
           public function ajout(Request $request, EntityManagerInterface $manager, Chambre $chambre = null) 
             {
                if(!$chambre)
                {
                    $chambre = new Chambre;
                    
                }
                $form = $this->createForm(ChambreType::class, $chambre);
              // * je crée une variable dans laquel je stock mon formulaire créée grace a createForm() et a son formBuilder (ChambreType)
              $form->handleRequest($request);
              if($form->isSubmitted() && $form->isValid())
              {
                  //* persist() préparer les requetes SQL par rapport a l'objet qu'on lui donne en paramètre
                  $manager->persist($chambre);
                  //* flush() execute toute les requêtes 
                  $manager->flush();
            //    aprés que l'admin ai rempli le form de la chambre il est redirigé vers home
                  return $this->redirectToRoute('home');
              }
      
              return $this->render('chambre/formchambre.html.twig', [
                  'formChambre' => $form,
                //   si nous somme sur la route/ new : editMode = 0
                // sinon editMode = 1
                  'editMode' => $chambre->getId() !== null,
              ]);
          }

        //creation de la methode pour affichage des chambres 
          
    #[Route('/chambre/show', name: 'app_showchambre')]
    public function show(ChambreRepository $repo): Response
    {
          
              $chambres = $repo->findAll();
              return $this->render('chambre/index.html.twig', [
                  'chambres' => $chambres,
              ]);
          
    }
    #[Route('/chambre/delete/{id}', name: 'app_chambre_delete')]
    
        public function delete(EntityManagerInterface $manager, Chambre $chambre)
        {
            $manager->remove($chambre); 
            $manager->flush();
            return $this->redirectToRoute('app_gestion_chambre');
        }
    

}