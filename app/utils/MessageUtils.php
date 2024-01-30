<?php
// ScreenCapture.php
class MessageUtils
{
    final public const TYPE_ERROR = "danger";
    final public const TYPE_WARNING = "warning";
    final public const TYPE_SUCCESS = "success";

    private $messagesList;
    
    public function __construct()
    {
        $this->messagesList = array();
    }

    public function addMessageToList($type, $text){
        
        array_push($this->messagesList, array("type" => $type,"text"=> $text));
    }
     // Getters
    public function getMessagesList() { return $this->messagesList; }
       // Setters
    
    public function setMessagesList($messagesList) { $this->messagesList = $messagesList; }
        
    public function hasAnyErrors(){
        foreach ($this->messagesList as $key => $value) {
            if($value["type"] === self::TYPE_ERROR){
                return true;
            }
        }
        return false;

    }

    
}