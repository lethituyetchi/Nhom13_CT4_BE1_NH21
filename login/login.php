<?php
session_start();
require "../config.php";
require "../models/db.php";
require "../models/user.php";
$user = new User;
if(isset($_POST['submit'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    if($user->checkLogin($username, $password)){
        $_SESSION['user'] = $username;
        if ($user == 'admin'){
            header('location:../Admin/index.php');
        }
        else{
            header('location:/Nhom13/index.php');
        }
    }
    else{
        header('location:index.php');
    }
}

?>