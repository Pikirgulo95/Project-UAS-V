<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php include "header.php"; ?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Data Siswa Pendaftar</h1>

            <?php 

            if(@$_GET['pesan']=="inputBerhasil"){

            ?>
                    <div class="alert alert-success">
                    Penyimpanan Berhasil!
                    </div>
            <?php

            }

            ?>

            <?php 
            if(@$_GET['pesan']=="hapusBerhasil"){
            ?>
                <div class="alert alert-success">
                    Data Berhasil Dihapus!
                </div>
            <?php
            }
            ?>

            <?php 

            if(@$_GET['pesan']=="editBerhasil"){

            ?>
                    <div class="alert alert-success">
                    Perubahan Berhasil!
                    </div>
            <?php

            }

            ?>

            <table class="table table-bordered table-hover" id="data-table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Lengkap</th>
                        <th>NIK</th>
                        <th>Jenis Kelamin</th>
                        <th>Alamat</th>
                        <th>Tanggal Lahir</th>
                        <th>Tempat Lahir</th>
                        <th>Asal Sekolah</th>
                        <th>No Hp</th>
                        <th>Email</th>
                        <th>Pilihan Jurusan</th>
                        <th>
                            <a href="input-pendaftaran.php">
                            <button class="btn btn-info glyphicon glyphicon-plus"></button>
                            </a>
                        </th>

                    </tr> 
                </thead> 
                <tbody>
                    <?php
                    include "../koneksi.php";
                    $sql = $koneksi->query("SELECT * FROM pendaftaran ORDER BY nik ASC");
                    $no = 1;
                    while($row = $sql->fetch_assoc()){
                    ?>
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $row['nama'];?></td>
                            <td><?php echo $row['nik'];?></td>
                            <td><?php echo $row['jenis_kelamin'];?></td>
                            <td><?php echo $row['alamat'];?></td>
                            <td><?php echo $row['tanggal_lahir'];?></td>
                            <td><?php echo $row['tempat_lahir'];?></td>
                            <td><?php echo $row['asal_sekolah'];?></td>
                            <td><?php echo $row['nomor_hp'];?></td>
                            <td><?php echo $row['email'];?></td>
                            <td><?php echo $row['pilihan_jurusan'];?></td>
                            <td>
                                <a href="edit-pendaftaran.php?id=<?php echo $row['pendaftaran_id']?>">
                                    <button class="btn btn-xs btn-danger glyphicon glyphicon-edit"></button>
                                </a>

                                <a href="hapus-pendaftaran.php?id=<?php echo $row['pendaftaran_id'];?>" onclick="return confirm('Anda yakin menghapus data?')">
                                    <button class="btn btn-xs btn-warning glyphicon glyphicon-remove"></button>
                                </a>

                            </td>
                        </tr>
                    <?php
                        $no++;
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php include "footer.php";?>