<?php
session_save_path('');

session_start();

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php
    include "config/koneksi.php";

    $sql = mysqli_query($koneksi, "SELECT * FROM identitas");
    $row1 = mysqli_fetch_assoc($sql);
    ?>
    <title>Pendaftaran | <?= $row1['nama_app']; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="assets/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="assets/plugins/iCheck/square/blue.css">
    <!-- Icon -->
    <link rel="icon" type="icon" href="assets/dist/img/logo_app.png">
    <!-- Custom -->
    <link rel="stylesheet" href="assets/dist/css/custom.css">
    <!-- Toastr -->
    <link rel="stylesheet" href="assets/dist/css/toastr.min.css">
</head>

<body class="hold-transition login-page" style="font-family: 'Quicksand', sans-serif;">
    <div class="login-box">
        <div class="login-logo">
            <a href="masuk"><b><?= $row1['nama_app']; ?></b></a>
        </div>
        <!-- /.login-logo -->
        <div class="login-box-body" style="border-radius: 10px;">
            <img src="assets/dist/img/p.png" height="80px" width="80px" style="display: block; margin-left: auto; margin-right: auto; margin-top: -12px; margin-bottom: 5px;">

            <form name="formLogin" action="function/Process.php?aksi=daftar" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" name="fullname" placeholder="Nama Lengkap" id="fullname">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" name="nomorInduk" placeholder="Nomor Induk" id="nomorInduk">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" name="username" placeholder="Nama Pengguna" id="username">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name="password" placeholder="Kata Sandi" id="password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name="password2" placeholder="Konfirmasi Kata Sandi" id="password2">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                        <select class="form-control" name="role" id="role">
                                    <option selected disabled>Silahkan pilih Status Anda </option> 
                                    <option value="Mahasiswa">Mahasiswa</option>
                                    <option value="Pegawai">Pegawai</option>   
                        </select>
                </div>
                
                <div class="row">
                    <!-- /.col -->
                    <div class="col-xs-12">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Daftar Sekarang</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <div class="social-auth-links text-center">
                <p style="font-size: 11px;">- ATAU -</p>
                <div class="row">
                    <div class="col-xs-12">
                        <button type="button" class="btn btn-block btn-success btn-flat"><i class="fa fa-sign-in"></i> Sudah menjadi Anggota ? Masuk</button>
                    </div>
                </div>
            </div>

            <p style="text-align: center; font-size: 13px;">Hak Cipta &copy; <?= date('Y'); ?> .<?= $row1['nama_app']; ?> by RC.</p>

        </div>
        <!-- /.login-box-body -->
    </div>
    <!-- /.login-box -->

    <!-- jQuery 3 -->
    <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Fungsi mengarahkan kehalaman masuk -->
    <!-- <script>
        function Masuk() {
            window.location.href = "masuk";
        }
    </script> -->
    <!-- Toastr -->
    <script src="assets/dist/js/toastr.min.js"></script>
    <!-- -->
    <script>
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": false,
            "positionClass": "toast-top-right",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    </script>
    <!-- -->
    <script>
        function validateForm() {
            if (document.forms["formLogin"]["fullname"].value == "") {
                toastr.error("Nama Lengkap harus diisi !!");
                document.forms["formLogin"]["fullname"].focus()
                return false;
            }
            if (document.forms["formLogin"]["nomorInduk"].value == "") {
                toastr.error("Nomor Induk Anda harus diisi !!");
                document.forms["formLogin"]["nomorInduk"].focus();
                return false;
            }
            if (document.forms["formLogin"]["username"].value == "") {
                toastr.error("Nama Pengguna harus diisi !!");
                document.forms["formLogin"]["username"].focus();
                return false;
            }
            if (document.forms["formLogin"]["password"].value == "") {
                toastr.error("Kata Sandi harus diisi !!");
                document.forms["formLogin"]["password"].focus();
                return false;
            }
            if (document.forms["formLogin"]["password2"].value !== document.forms["formLogin"]["password"].value ) {
                toastr.error("Kata Sandi harus harus sama !!");
                document.forms["formLogin"]["password2"].focus();
                return false;
            }
            if (document.forms["formLogin"]["role"].value !== "Mahasiswa" && "Pegawai" ) {
                toastr.error("Status Anda harus diisi !!");
                document.forms["formLogin"]["role"].focus();
                return false;
            }
            
        }
    </script>
    <script>
        <?php
        if (isset($_SESSION['gagal_daftar']) && $_SESSION['gagal_daftar'] <> '') {
            echo "swal({
                icon: 'error',
                title: 'Peringatan',
                text: '$_SESSION[gagal_daftar]',
                buttons: false,
                timer: 3000
              })";
        }
        $_SESSION['gagal_daftar'] = '';
        ?>
    </script>

    
</body>

</html>