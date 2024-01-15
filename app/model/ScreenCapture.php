<?php
// ScreenCapture.php

class ScreenCapture
{
    private $id;
    private $name;
    private $description;
    private $createdAt;
    private $token;
    private $path;

    public function __construct($id = null, $name = '', $description = '', $createdAt = null, $token = '', $path = '')
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->createdAt = $createdAt;
        $this->token = $token;
        $this->path = $path;
    }

    // Getters
    public function getId() { return $this->id; }
    public function getName() { return $this->name; }
    public function getDescription() { return $this->description; }
    public function getCreatedAt() { return $this->createdAt; }
    public function getToken() { return $this->token; }
    public function getPath() { return $this->path; }

    // Setters
    public function setId($id) { $this->id = $id; }
    public function setName($name) { $this->name = $name; }
    public function setDescription($description) { $this->description = $description; }
    public function setCreatedAt($createdAt) { $this->createdAt = $createdAt; }
    public function setToken($token) { $this->token = $token; }
    public function setPath($path) { $this->path = $path; }
}