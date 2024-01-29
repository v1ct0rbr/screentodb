
<?php

$pdo = require_once './utils/db_connect.php';
require_once 'model/Category.php';
require_once 'repository/CategoryRepository.php';

$repository = new CategoryRepository($pdo);
$category = null;
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST)){
    
    $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
    
    $name = filterInput('name');
    $description = filterInput('description');

    $category = new Category($id, $name, $description);
    $newId = 0;

    if($id != null)
        $repository->update($category);
    else{
        $newId = $repository->create($category);
        $category->setId( $newId );
    }
    
}

if($category != null){
    $smarty->assign("category", $category);
}else{
    $smarty->assign("category", new Category(null, '', ''));
}


$categories = $repository->listAll();

$smarty->assign("categories", $categories);
$smarty->assign("title", "Categorias");
$smarty->display('categorias.tpl');
?>


