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
        return $this->render('admin/index.html.twig', [
            'controller_name' => 'AdminController',
        ]);
    }
    #[Route('/mention/cgv', name: 'app_cgv')]
    public function cgv(): Response
    {
        return $this->render('cgv.html.twig');
    }

    #[Route('/mention/mentionslegales', name: 'app_mentionslegales')]
    public function mentionslegales(): Response
    {
        return $this->render('mentionslegales.html.twig');
    }
  
}
