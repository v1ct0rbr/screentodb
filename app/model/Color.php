<?php
// ScreenCapture.php

class Color
{
    private $id;
    private $name;
    

    public function __construct($id = null, $name = '')
    {
        $this->id = $id;
        $this->name = $name;
        
    }

    // Getters
    public function getId() { return $this->id; }
    public function getName() { return $this->name; }
       // Setters
    public function setId($id) { $this->id = $id; }
    public function setName($name) { $this->name = $name; }
   
}