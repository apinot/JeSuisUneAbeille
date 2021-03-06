<?php
namespace abeille\controllers;

use \abeille\models\Plante;
use \abeille\utils\Router;
use \abeille\utils\QRCode;

class ControllerPlantes extends Controller {

    public function afficherListePlantes($request , $response, $args) {
        $plantes = Plante::all();
        return $this->render($response, 'index.html.twig', compact("plantes"));
    }

    public function afficherPlante($request, $response, $args){
        $plante = Plante::find($args['id']);
        $json = ["type" => "plante", "id" => $plante->id];
        $qrcode = QRCode::generate($json);
        return $this->render($response, 'plante.html.twig', compact("plante", "qrcode"));
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

    public function afficherAjoutForm($request, $response, $args) {
        return $this->render($response, 'formAjoutPlante.html.twig');
    }

    public function modifierPlante($request, $response, $args) {
        $plante = Plante::find($args['id']);

        //values
        $nom = trim(Router::getPostArg($request, 'nom'));
        $nom_latin = trim(Router::getPostArg($request, 'nom_latin'));
        $taille = trim(Router::getPostArg($request, 'taille'));
        $floraison = trim(Router::getPostArg($request, 'floraison'));
        $couleur = trim(Router::getPostArg($request, 'couleur'));
        $emplacement = trim(Router::getPostArg($request, 'emplacement'));
        $nectar = trim(Router::getPostArg($request, 'nectar'));
        $pollen = trim(Router::getPostArg($request, 'pollen'));
        $miellat = trim(Router::getPostArg($request, 'miellat'));

        if($plante) {
            $plante->nom = $nom;
            $plante->nom_latin = $nom_latin;
            $plante->taille = $taille;
            $plante->floraison = $floraison;
            $plante->couleur = $couleur;
            $plante->emplacement = $emplacement;
            $plante->nectar = $nectar;
            $plante->pollen =$pollen;

            $plante->miellat = $miellat ? true : false;

            $plante->save();
        }

        return Router::redirect($response, 'listerPlantes');
    }

    public function ajouterPlante($request, $response, $args) {
        $plante = new Plante();

        //values
        $nom = trim(Router::getPostArg($request, 'nom'));
        $nom_latin = trim(Router::getPostArg($request, 'nom_latin'));
        $taille = trim(Router::getPostArg($request, 'taille'));
        $floraison = trim(Router::getPostArg($request, 'floraison'));
        $couleur = trim(Router::getPostArg($request, 'couleur'));
        $emplacement = trim(Router::getPostArg($request, 'emplacement'));
        $nectar = trim(Router::getPostArg($request, 'nectar'));
        $pollen = trim(Router::getPostArg($request, 'pollen'));
        $miellat = trim(Router::getPostArg($request, 'miellat'));

        if($plante) {
            $plante->nom = $nom;
            $plante->nom_latin = $nom_latin;
            $plante->taille = $taille;
            $plante->floraison = $floraison;
            $plante->couleur = $couleur;
            $plante->emplacement = $emplacement;
            $plante->nectar = $nectar;
            $plante->pollen =$pollen;

            $plante->miellat = $miellat ? true : false;

            $plante->save();
        }

        return Router::redirect($response, 'listerPlantes');
    }
}