<?php
//echo controller . "/" . $controller . ".php"; exit;
require './vendor/autoload.php';
require_once './configs/settings.php';
require_once './configs/SmartySettings.php';

$currentSitePath = $currentSitePath = $_SERVER['DOCUMENT_ROOT'];

$smarty = new SmartySettings($currentSitePath."/smarty");
$smarty->assign('APP_PATH', APP_PATH);

#var_dump($_GET);
$paginas_desabilitadas = array();
$pg = isset($_GET['pg']) ? $_GET['pg'] : 'home';


$paginas_desabilitadas = array();

if (isset($paginas_desabilitadas[$pg])) {
    echo 'Página temporariamente indisponível. ('.$paginas_desabilitadas[$pg].') <input type="button" value="voltar" onclick="window.history.back()" />';
    exit;
}
$controller = $pg;

if (!file_exists(PATH_CONTROLLER."/$controller.php")) {
//    header("HTTP/1.0 404 Não Encontrado");
//    header("HTTP/1.0 404 Not Found");
    
    http_response_code(400);
    header("HTTP/1.0 404 Not Found");
} else {
    include PATH_CONTROLLER."/$controller.php";
}