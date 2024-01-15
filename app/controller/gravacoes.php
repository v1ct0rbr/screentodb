
<?php

$pdo = require_once './utils/db_connect.php';
require_once 'model/ScreenCapture.php';
require_once 'repository/ScreenCaptureRepository.php';

$repository = new ScreenCaptureRepository($pdo);

$screenCaptures = $repository->listAll();


$smarty->assign("title", "Gravações");
$smarty->display('gravacoes.tpl');
?>


