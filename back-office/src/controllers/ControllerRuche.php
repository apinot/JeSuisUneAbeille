<?php

namespace abeille\controllers;

use abeille\utils\QRCode;

class ControllerRuche extends Controller {

    public function afficherRuche($request, $response, $args) {
        $json = ["type" => "ruche"];
        $qrcode = QRCode::generate($json);
        return $this->render($response, 'ruche.html.twig', compact("qrcode"));
    }


}