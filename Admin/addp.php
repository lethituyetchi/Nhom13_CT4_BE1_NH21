<?php
 require "config.php";
 require "models/db.php";
 require "models/protype.php";
$type = new Protype;
if(isset($_POST['submit'])){
    $name = $_POST['name'];
    // thêm
    $type->addProType($name);
}
header('location:protype.php');