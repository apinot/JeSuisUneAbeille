<?php

namespace abeille\utils;

use chillerlan\QRCode\QRCode as CodeGenerator;
use chillerlan\QRCode\QROptions;

class QRCode {
    
    public static function generate(array $json) : string {
        $options = new QROptions([
            "eccLevel" => CodeGenerator::ECC_H,
            "imageTransparent" => false,
        ]);
        return (new CodeGenerator($options))->render(json_encode($json));
    }
    
}