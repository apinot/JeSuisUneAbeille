<?php
namespace abeille\utils;

class Router { 

    public static function redirect($response, $route, $args = []) {
        return $response->withRedirect(self::pathFor($route, $args));
    }

    public static function pathFor($route, $args = []) {
        global $app;
        return $app->getContainer()->get('router')->pathFor($route, $args);
    }

    public static function getPostArg($request, $key) {
        $data = $request->getParsedBodyParam($key, null);
        return $data === null ? null : $data;
    }
}