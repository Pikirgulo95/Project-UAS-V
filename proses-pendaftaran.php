
<?php

include "koneksi.php";

$nama = $koneksi->real_escape_string($_POST['nama']); 
$nik = $koneksi->real_escape_string($_POST['nik']); 
$jenis_kelamin = $koneksi->real_escape_string($_POST['jenis_kelamin']);
$alamat = $koneksi->real_escape_string($_POST['alamat']);
$tanggal_lahir = $koneksi->real_escape_string($_POST['tanggal_lahir']); 
$tempat_lahir = $koneksi->real_escape_string($_POST['tempat_lahir']);
$asal_sekolah = $koneksi->real_escape_string($_POST['asal_sekolah']);
$nomor_hp = $koneksi->real_escape_string($_POST['nomor_hp']);
$email = $koneksi->real_escape_string($_POST['email']);
$pilihan_jurusan = $koneksi->real_escape_string($_POST['pilihan_jurusan']);       


$simpan=$koneksi->query("insert into pendaftaran(nama,nik,jenis_kelamin,alamat,tanggal_lahir,tempat_lahir,asal_sekolah,nomor_hp,email,pilihan_jurusan) 
                        values ('$nama', '$nik', '$jenis_kelamin', '$alamat', '$tanggal_lahir', '$tempat_lahir', '$asal_sekolah', '$nomor_hp', '$email', '$pilihan_jurusan')");

if($simpan==true){

    header("location:pendaftaran.php?pesan=inputBerhasil");
} else{
    echo "Error";
}

?>