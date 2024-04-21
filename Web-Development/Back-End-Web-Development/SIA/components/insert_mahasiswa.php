<?php
    include('config.php');
    $nim=$_POST['nim'];
    $nama=$_POST['nama'];
    $jk=$_POST['jk'];
    $tmp_lahir=$_POST['tmp_lahir'];
    $tgl_lahir=$_POST['tgl_lahir'];
    $tgl=date('Y-m-d',strtotime($tgl_lahir));
    $alamat=$_POST['alamat'];
    $email=$_POST['email'];
    $telp=$_POST['telp'];
    $angkatan=$_POST['angkatan'];
    $prodi_id=$_POST['prodi_id'];
    $status=$_POST['status'];

    $hasil=$conn->query("insert into mahasiswa(nim, nama, jk, tmp_lahir, tgl_lahir, alamat, email, telp, angkatan, prodi_id, status) values('$nim', '$nama', '$jk', '$tmp_lahir', '$tgl', '$alamat', '$email', '$telp', '$angkatan', '$prodi_id', '$status')");
    if($hasil){
        header("Location: ../mahasiswa.php");
    }else{
        echo($conn->errno);
    }
?>

