<!-- edit.php -->
<?php
    include 'config.php';
    $id=isset($_GET['id']) || !empty($_GET['id']) ? ($_GET['id']) : null;
    
    if($id){
        $baris = $conn -> query("SELECT * from users where id = '$id'");
        $hasil = $baris -> fetch_array(MYSQLI_ASSOC);
        if(!$hasil){
            echo "Data kosong";
            exit();
        }
    } else {
        echo "Data kosong";
        exit();
    }
?>

<div class="container">
    <div class="row mt-2">
        <h6 class="col">Saat ini mengedit user: <?=$hasil['name'];?></h6>
    </div>
    <form method="post" action="components/update_users.php">
        <div class="row mt-2">
            <input type="hidden" id="id" name="id" value="<?=$hasil['id'];?>"/>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Nama</label>
            <input class="col-md-9" type="text" id="nama" name="nama" value="<?=$hasil['name'];?>"/>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Email</label>
            <input class="col-md-9" type="email" id="email" name="email" value="<?=$hasil['email'];?>"/>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Password</label>
            <input class="col-md-9" type="password" id="password" name="password" value="<?=$hasil['password'];?>"/>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Role</label>
            <select class="col-md-9" id="role" name="role" >
                <option value="">Pilih Role</option>
                <option value="admin" <?=($hasil['role'] == 'admin') ? 'selected' : '';?>>Administrator</option>
                <option value="user" <?=($hasil['role'] == 'user') ? 'selected' : '';?>>User</option>
            </select>
        </div>
        <div class="row mt-5">
            <button type="submit" class="btn btn-primary">Kirim</button>
        </div>
    </form>
</div>