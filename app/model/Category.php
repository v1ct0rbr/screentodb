<?php
// ScreenCapture.php

class Category
{
    private $id;
    private $name;
    private $description;
    private $color;
    
    public function __construct($id = null, $name = '', $description = '', Color $color = null)
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->color = $color;
    }

    // Getters
    public function getId() { return $this->id; }
    public function getName() { return $this->name; }
    public function getDescription() { return $this->description; }
    public function getColor() { return $this->color; }
    

    // Setters
    public function setId($id) { $this->id = $id; }
    public function setName($name) { $this->name = $name; }
    public function setDescription($description) { $this->description = $description; }
    public function setColor($color) { $this->color = $color; }
    
}