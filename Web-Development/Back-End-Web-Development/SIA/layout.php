<!DOCTYPE html>
<html lang="en">

<?php require_once ('components/myheader.php'); ?>
<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
       <?php include_once('components/mysidebar.php'); ?>
        <!-- Content Start -->
        <div class="content">
            
            <?php include_once('components/mynavbar.php');?>

            <!-- Blank Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row vh-100 bg-light rounded align-items-center justify-content-center mx-0">
                    <div class="col-md-6 text-center">
                        <h3>This is blank page</h3>
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