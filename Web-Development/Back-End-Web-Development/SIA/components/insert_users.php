<?php
    include('config.php');
    $nama=$_POST['nama'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $role=$_POST['role'];

    $hasil=$conn->query("insert into users(name, email, password, role) values('$nama', '$email', '$password', '$role')");
    if($hasil){
        header("Location: ../users.php");
    }else{
        echo($conn->errno);
    }
?>

