<?php
class Login extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('loginModel');
    } 

    public function index(){
        if(isset($_SESSION['user'])){
            echo '<script>alert("Bạn đã đăng nhập"); location.href="/";</script>';

        }else{
            $this->render('login');
            if(isset($_POST['username']) && isset($_POST['password'])){
            $userName = $_POST['username'];
            $password = $_POST['password'];
            $this->checkLogin($userName, $password);
        }
        }
        
    }
    private function checkLogin($userName, $password){
        $result = $this->model->post($userName, $password);
        if($result){
            $user = $result->fetch_assoc();
            $__user = array(
                'id' => $user['id'], 
                'userName' => $user['userName'],
                'password' => $user['password'],
                'name' => $user['name'],
                'email' => $user['email'],
                'address' => $user['address'],
            );
            $__cart = [];
            // khởi tạo phiên đăng nhập
            $_SESSION['user'] = $__user;
            $_SESSION['cart'] = $__cart;
        }
        else{
            echo "<script>alert('Sai tên đăng nhập hoặc mật khẩu')</script>";
        }

    }
}
 ?>