<?php
//echo controller . "/" . $controller . ".php"; exit;

$paginas_desabilitadas = array();
$pg = isset($_GET['pg']) ? $_GET['pg'] : 'home';

$paginas_desabilitadas = array();
if (array_key_exists($pg, $paginas_desabilitadas)) {
    echo 'Página temporariamente indisponível. <input type="button" value="voltar" onclick="window.history.back()" />';
    exit;
}
if ($pg == 'manutencao') {
    $controller = "home";
} elseif ($pg == 'feed-rss2') {
    $controller = '/feed/' . $pg;
} else {
    $controller = $pg;
}

if (!file_exists("controller/$controller.php")) {
//    header("HTTP/1.0 404 Não Encontrado");
//    header("HTTP/1.0 404 Not Found");
    
    http_response_code(400);
    header("HTTP/1.0 404 Not Found");
} else {
    include "controller/$controller.php"
}