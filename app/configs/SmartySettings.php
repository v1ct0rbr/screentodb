<?php

class SmartySettings extends Smarty {
     
     public function __construct($smartyPath){
        parent::__construct();


        $this->setTemplateDir($smartyPath.'/view/templates/');
        $this->setCompileDir($smartyPath.'/templates_c/');
        $this->setConfigDir($smartyPath.'/configs/');
        $this->setCacheDir($smartyPath.'/cache/');

        $this->caching = Smarty::CACHING_LIFETIME_CURRENT;
        $this->assign('app_name', 'Screen to DB');
   }

}