
<?php
 require "config.php";
 require "models/db.php";
 require "models/protype.php";
$type = new Protype;
echo $_GET['type_id'];
if(isset($_POST['submit'])){
    $id = $_GET['type_id'];
    $name = $_POST['type_name'];
    }
    // thêm
    $type->editType($name, $id);
header('location:protype.php');
