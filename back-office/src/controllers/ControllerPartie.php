<?php
namespace abeille\controllers;

use \abeille\utils\Config;
use \abeille\utils\Router;

class ControllerPartie extends Controller {

    public function afficherFormSettings($request, $response) {
        $config = Config::all();
        $this->render($response, 'settings.html.twig', compact("config"));
    }

    public function updateSettings($request, $response) {
        $array = [];
        $array['nbPlantes'] = Router::getPostArg($request, 'nbPlantes');
        $array['temps'] = Router::getPostArg($request, 'temps');

        Config::set($array);

        return Router::redirect($response, 'listerPlantes');
    }
}
