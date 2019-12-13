<?php
namespace abeille\controllers;

use \abeille\models\Plante;

class ControllerPlantes extends Controller {

    public function afficherListePlantes($request , $response, $args) {
        $plantes = Plante::all();
        return $this->render($response, 'listePlantes.html.twig', compact("plantes"));
    }
}