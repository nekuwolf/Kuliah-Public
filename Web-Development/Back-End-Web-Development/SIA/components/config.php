<?php
    $host="172.17.0.2";
    // $host="localhost";
    $user="user";
    $pwd="user";
    $db="dbba224";

    $conn=new mysqli($host,$user, $pwd,$db);
    if(!$conn){
        die('Could not connect to database');
    }

?>