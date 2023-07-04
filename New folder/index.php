<?php
@session_start();
include "+koneksi.php";

if(!@$_SESSION['siswa']) {
    if(@$_GET['hal'] == 'daftar') {
        include "register.php";
    } else {
        include "login.php";
    }
} else { ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ELYB <?php echo"$k_k[nama]";?></title>
	    <!-- Bootstrap 3.3.5 -->
		   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="sys/bootstrap/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
      <link rel="stylesheet" href="sys/bootstrap/font/css/font-awesome.min.css">
    <!-- Ionicons -->
  <link rel="stylesheet" href="sys/bootstrap/plugins/datatables/dataTables.bootstrap.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="sys/bootstrap/plugins/select2/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="sys/bootstrap/dist/css/AdminLTE.min.css">
	
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="sys/bootstrap/dist/css/skins/_all-skins.min.css">
	 	<script src="sys/bootstrap/plugins/ckeditor/ckeditor.js"></script>  
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="?module=home" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>U</b>LN</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Online</b> SYSTEM</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
         
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
        <aside class='main-sidebar'>
        <!-- sidebar: style can be found in sidebar.less -->
        <section class='sidebar'>
          <!-- Sidebar user panel -->
          <div class='user-panel'>
            <div class='pull-left image'>
              <img src='foto/logo.png' class='img-circle' alt='User Image'>
            </div>
            <div class='pull-left info'>
              <p>E-LEARNING SYSTEM</p>
			   <a href="index.php"><i class="fa fa-circle text-success"></i><?php echo"$k_k[nama]";?></a>
            </div>
	<?php
$sql_terlogin = mysqli_query($db, "SELECT * FROM tb_siswa JOIN tb_kelas ON tb_siswa.id_siswa = '$_SESSION[siswa]' AND tb_kelas.id_kelas = tb_siswa.id_kelas") or die ($db->error);
$data_terlogin = mysqli_fetch_array($sql_terlogin);
?>		
          </div>  <ul class="sidebar-menu">
<li><a  href='index.php'><i class='fa fa-dashboard'></i> <span>Beranda</span> <i class='fa fa-angle-left pull-right'></i></a> </li>
<li><a   href='?page=berita'><i class='fa  fa-bar-chart'></i> <span>Berita</span><i class='fa fa-angle-left pull-right'></i></a> </li>
<li><a href='?page=quiz'><i class="fa fa-mortar-board"></i><span>Tugas / Quiz</span> <i class='fa fa-angle-left pull-right'></i></a></li>
<li><a   href='?page=nilai'><i class='fa  fa-bar-chart'></i> <span>Nilai</span><i class='fa fa-angle-left pull-right'></i></a> </li>
<li><a   href='?page=materi'><i class='fa  fa-bar-chart'></i> <span>Materi</span><i class='fa fa-angle-left pull-right'></i></a> </li>
<li><a href='inc/logout.php?sesi=siswa'><i class='fa fa-cog'></i> <span>Logout</span> <i class='fa fa-angle-left pull-right'></i></a> </li>
</ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Sistem E-Learning  <?php echo"$k_k[nama]";?>
           </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
    
     
       <?php
        if(@$_GET['page'] == '') {
            include "inc/beranda.php";
        } else if(@$_GET['page'] == 'quiz') {
            include "inc/quiz.php";
        } else if(@$_GET['page'] == 'nilai') {
            include "inc/nilai.php";
        } else if(@$_GET['page'] == 'materi') {
            include "inc/materi.php";
        } else if(@$_GET['page'] == 'berita') {
            include "inc/berita.php";
        } ?>
   
            </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.3.0
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="#">Almsaeed Studio / Web Progremer (<?php echo"$k_k[akabest]";?> )</a>.</strong>  All rights reserved.
      </footer>
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->
	    <script src="sys/bootstrap/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- DataTables -->
    <script src="sys/bootstrap/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="sys/bootstrap/plugins/datatables/dataTables.bootstrap.min.js"></script>

    <!-- page script -->
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="sys/bootstrap/bootstrap/js/bootstrap.min.js"></script>
    <!-- Select2 -->
    <script src="sys/bootstrap/plugins/select2/select2.full.min.js"></script>
    <!-- InputMask -->
    <script src="sys/bootstrap/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="sys/bootstrap/dist/js/demo.js"></script>
    <!-- Page script -->
    <script>
      $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>

  </body>
</html>

<?php
}
?>