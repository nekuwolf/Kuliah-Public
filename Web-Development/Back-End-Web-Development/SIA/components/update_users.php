<!-- update.php -->
<?php
include('config.php');
$nama=$_POST['nama'];
$email=$_POST['email'];
$password=$_POST['password'];
$role=$_POST['role'];
$id=$_POST['id'];

$hasil=$conn->query("update users set name='$nama', email='$email', password='$password', role='$role' where id='$id'");
if ($hasil) {
    header("Location: ../users.php");
} else {
    echo ($conn->errno);
}
?>