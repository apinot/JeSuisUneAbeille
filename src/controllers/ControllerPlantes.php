<?php
namespace abeille\controllers;

use \abeille\models\Plante;
use \abeille\utils\Router;

class ControllerPlantes extends Controller {

    public function afficherListePlantes($request , $response, $args) {
        $plantes = Plante::all();
        return $this->render($response, 'listePlantes.html.twig', compact("plantes"));
    }

    public function supprimerPlante($request, $response, $args) {
        $plante = Plante::find($args['id']);

        if($plante) {
            $plante->delete();
        }

        return Router::redirect($response, 'listerPlantes');
    }

    public function afficherEditForm($request, $response, $args) {
        $plante = Plante::find($args['id']);

        if($plante) {
            return $this->render($response, 'formEditPlante.html.twig', compact("plante"));
        }

        return Router::redirect($response, 'listerPlantes');
    }
}