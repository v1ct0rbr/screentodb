<?php
// ScreenCapture.php

class Category
{
    private $id;
    private $name;
    private $description;
    
    
    
    public function __construct($id = null, $name = '', $description = '')
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        
    }

    // Getters
    public function getId() { return $this->id; }
    public function getName() { return $this->name; }
    public function getDescription() { return $this->description; }
    
    

    // Setters
    public function setId($id) { $this->id = $id; }
    public function setName($name) { $this->name = $name; }
    public function setDescription($description) { $this->description = $description; }
    
    
}