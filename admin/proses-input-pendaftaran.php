<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nama=$_POST['nama'];
$nik=$_POST['nik'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$tanggal_lahir=$_POST['tanggal_lahir'];
$tempat_lahir=$_POST['tempat_lahir'];
$asal_sekolah=$_POST['asal_sekolah'];
$nomor_hp=$_POST['nomor_hp'];
$email=$_POST['email'];
$pilihan_jurusan=$_POST['pilihan_jurusan'];


include "../koneksi.php";

$simpan=$koneksi->query("insert into pendaftaran(nama,nik,jenis_kelamin,alamat,tanggal_lahir,tempat_lahir,asal_sekolah,nomor_hp,email,pilihan_jurusan) 
                        values ('$nama', '$nik', '$jenis_kelamin', '$alamat', '$tanggal_lahir', '$tempat_lahir', '$asal_sekolah', '$nomor_hp', '$email', '$pilihan_jurusan')");

if($simpan==true){

    header("location:pendaftaran.php?pesan=inputBerhasil");
} else{
    echo "Error";
}

?>