<?php

namespace eTextBook\SpawnBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

/**
 * @Route("/staff")
 */
class DefaultController extends Controller
{
    /**
     * @Route("/")
     * @Template()
     */
    public function indexAction() {
        return array();
    }

    /**
     * @Route("/snap")
     * @Template()
     */
    public function snapAction() {
        return array();
    }
}
