<?php
 require "config.php";
 require "models/db.php";
 require "models/manufacture.php";
$manu = new Manufacture;
if(isset($_POST['submit'])){
    $name = $_POST['name'];
    // thêm
    $manu->addManu($name);
}
header('location:manufacture.php');