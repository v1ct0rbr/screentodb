
<?php

require_once './utils/db_connect.php';
require_once 'model/ScreenCapture.php';
$pdo = $db_connect;
$repository = new ScreenCaptureRepository($pdo);

$screenCaptures = $repository->listAll();


$smarty->assign("title", "Gravações");
$smarty->display('gravacoes.tpl');
?>


