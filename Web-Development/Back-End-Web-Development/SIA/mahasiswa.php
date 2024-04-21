<!DOCTYPE html>
<html lang="en">

<?php 
    require_once('components/config.php');
    require_once('components/myheader.php'); 

    $baris=$conn->query( "SELECT * FROM mahasiswa ");
    $hasil=$baris->fetch_all(3);
?>
<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <?php include_once('components/mysidebar.php'); ?>
        <!-- Content Start -->
        <div class="content">
            <?php include_once('components/mynavbar.php');?>
            <!-- Users Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="p-4 vh-100 bg-light">
                    <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="simple-tab-0" data-bs-toggle="tab" href="#simple-tabpanel-0" role="tab" aria-controls="simple-tabpanel-0" aria-selected="true">Daftar mahasiswa</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="simple-tab-1" data-bs-toggle="tab" href="#simple-tabpanel-1" role="tab" aria-controls="simple-tabpanel-1" aria-selected="false">Tambah mahasiswa</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="simple-tab-2" data-bs-toggle="tab" href="#simple-tabpanel-2" role="tab" aria-controls="simple-tabpanel-2" aria-selected="false">Edit</a>
                        </li>
                    </ul>
                    <div class="tab-content pt-4" id="tab-content">
                        <div class="tab-pane active" id="simple-tabpanel-0" role="tabpanel" aria-labelledby="simple-tab-0">
                            <!-- <h6 class="mb-4">Daftar Users</h6> -->
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">NIM</th>
                                        <th scope="col">Nama</th>
                                        <th scope="col">Email</th>
                                        <th scope="col"></th>                                        
                                    </tr>
                                </thead>
                                <tbody>
                                <?php $x=1;
                                    foreach($hasil as $row): ?>
                                    <tr>
                                        <td><?= $x++; ?></td>
                                        <td><?= $row['nim']; ?></td>
                                        <td><?= $row['nama']; ?></td>
                                        <td><?= $row['email']; ?></td>
                                        <td>
                                            <a href="edit.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-primary">Edit</a>
                                            <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" style="display: inline;">
                                                <input type="hidden" name="delete_id" value="<?= $row['id']; ?>">
                                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this user?','Warning')">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>    
                            </table>
                        </div>
                        <div class="tab-pane" id="simple-tabpanel-1" role="tabpanel" aria-labelledby="simple-tab-1">
                            <?php
                                include_once('components/form_mahasiswa.php');
                            ?>
                        </div>
                        <div class="tab-pane" id="simple-tabpanel-2" role="tabpanel" aria-labelledby="simple-tab-2">Tab 3 selected</div>
                    </div>
                </div>
            </div>
            <!-- Blank End -->
            <?php include_once('components/myfooter.php');?>
        </div>
        <!-- Content End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

<?php require_once('components/mylib.php');?>
</body>
</html>