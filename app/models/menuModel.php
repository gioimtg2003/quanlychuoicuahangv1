<?php
class menuModel extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function get(){
        $sql = "SELECT * FROM product";
        $result = $this->connect->query($sql);
        return $result;
    }
}

?>