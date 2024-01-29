<?php

function isValidString($string) {
    $teste = isset($string) && trim($string) !== '';
   
    return $teste;
}

function protectAndFilterFormField($campo) {
    // Remove espaços em branco do início e do final
    $campo = trim($campo);

    // Adiciona barras invertidas antes de caracteres especiais para uso em SQL
    // if (!get_magic_quotes_gpc()) {
        $campo = addslashes($campo);
    // }

    // Converte caracteres especiais para entidades HTML para prevenir XSS
    $campo = htmlspecialchars($campo, ENT_QUOTES, 'UTF-8');

    // Filtra dados contra riscos de segurança
    $campo = trim(htmlentities(strip_tags($campo)));

 
    return $campo;
}

function filterInput($name, $method = 'post'){
    $typeMethod =  $method == 'post' ? INPUT_POST : INPUT_GET;
    return filter_input($typeMethod, $name, FILTER_CALLBACK, ['options' => 'protectAndFilterFormField']);
}