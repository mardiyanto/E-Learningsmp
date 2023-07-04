<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "smk_albarokah";
// Koneksi dan memilih database di server
$db = mysqli_connect($server,$username,$password,$database) or die("Koneksi gagal");


$sql_per_id = mysqli_query($db, "SELECT * FROM profil WHERE id_profil='1'") or die ($db->error);
$k_k = mysqli_fetch_array($sql_per_id);
?>