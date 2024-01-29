<?php
// ScreenCapture.php
class MessageUtils
{
    final public const TYPE_ERROR = "error";
    final public const TYPE_WARNING = "warning";
    final public const TYPE_SUCCESS = "success";
    
    private $type;
    private $text;
        
    public function __construct($type, $text)
    {
        $this->type = $type;
        $this->text = $text;                
    }

    // Getters
    public function getType() { return $this->type; }
    public function getText() { return $this->text; }

    // Setters
    public function setType($type) { $this->type = $type; }
    public function setText($text) { $this->text = $text; }
        
    public function validate(){
        
    }
    
}