<?php
namespace abeille\utils;

class Config { 
    
    private static $file = '../config/partie.conf.ini';
    
    public function get($param) {
        $config = parse_ini_file(self::$file);
        return in_array($param, $config) ? $config[$param] : null;
    }
    
    public function all() {
        return parse_ini_file(self::$file);
    }
    
    public function set($array) {
        
        $res = array();
        foreach($array as $key => $val)
        {
            if(is_array($val))
            {
                $res[] = "[$key]";
                foreach($val as $skey => $sval) $res[] = "$skey = ".(is_numeric($sval) ? $sval : '"'.$sval.'"');
            }
            else $res[] = "$key = ".(is_numeric($val) ? $val : '"'.$val.'"');
        }
        file_put_contents(self::$file, implode("\r\n", $res));
        
    }
}