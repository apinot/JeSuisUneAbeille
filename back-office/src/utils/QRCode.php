<?php

namespace abeille\utils;

use chillerlan\QRCode\QRCode as CodeGenerator;

class QRCode {
    
    public static function generate(array $json) : string {
        return (new CodeGenerator)->render(json_encode($json));
    }
    
}