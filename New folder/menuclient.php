 <aside class='main-sidebar'>
        <!-- sidebar: style can be found in sidebar.less -->
        <section class='sidebar'>
          <!-- Sidebar user panel -->
          <div class='user-panel'>
            <div class='pull-left image'>
              <img src='foto/logo.png' class='img-circle' alt='User Image'>
            </div>
            <div class='pull-left info'>
              <p>PERPUSTAKAAN ONLINE</p>
			   <a href="index.php"><i class="fa fa-circle text-success"></i><?php echo"$k_k[nama]";?></a>
            </div>
          </div>  <ul class="sidebar-menu">
		    <li>
              <a href='index.php'>
                <i class='fa fa-dashboard'></i> <span>Beranda</span> <i class='fa fa-angle-left pull-right'></i>
              </a> 
 </li>
 		    <li>
              <a href='xxx.php?module=bukulih'>
                <i class="fa fa-circle-o"></i><span>Daftar Buku</span> <i class='fa fa-angle-left pull-right'></i>
              </a> 
 </li>

      <? if( $_SESSION[anggota]==''){?>
<li>
              <a href='daftar.php'>
                <i class="fa fa-mortar-board"></i><span>Daftar Angota</span> <i class='fa fa-angle-left pull-right'></i>
              </a> 
 </li>
 <li>
              <a href='xxx.php?module=loginango'>
                 <i class='fa  fa-user-plus'></i>  <span>Login Angota</span> <i class='fa fa-angle-left pull-right'></i>
              </a> 
 </li>
 <? }else{?>
          <!-- sidebar menu: : style can be found in sidebar.less -->
    

  <li>
              <a href='xxx.php?module=histori'>
			  
                <i class='fa  fa-bar-chart'></i> <span>Peminjaman Anda</span><i class='fa fa-angle-left pull-right'></i>
              </a> 
 </li>
 <li>
       <!--           <a href='xxx.php?module=daftarjurnal'>
                <i class='fa  fa-user-plus'></i> <span>ulpload Jurnal</span> <i class='fa fa-angle-left pull-right'></i>
              </a> -->
 </li>

	  <li><a href=logout.php><i class='fa fa-cog'></i> <span>Logout</span> <i class='fa fa-angle-left pull-right'></i></a> </li>

	  <? }?></ul>
        </section>
        <!-- /.sidebar -->
      </aside>