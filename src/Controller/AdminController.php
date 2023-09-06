<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends AbstractController
{
    #[Route('/jegere', name: 'app_jegere')]
    public function index(): Response
    {
        // ('admin/index.html.twig')=correspond a l'ARBORESCENCE DU PROJET ELLE N'est pas UNE URL DONC PAS DE RISQUE DE SECU
        return $this->render('admin/index.html.twig', [
            'controller_name' => 'AdminController',
        ]);
    }
}
