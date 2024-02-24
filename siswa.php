<?php include "header.php"; ?>

  <!-- Awal Page -->
  <div class="container">
    <!-- Awal baris -->
    <div class="row">
      <div class="col-md-12"><!-- Awal Kolom -->
        <div class="panel panel-default">
          <div class="panel-heading">
            <h2><span class="#"></span> Data Siswa</h2>
          </div>
          <div class="panel-body">
            <table class="table table-bordered table-hover text-center" id="data-table">
            <thead class="bg-info text-white">
                <tr>
                  <th>NIS</th>
                  <th>Nama Lengkap</th>
                  <th> Jenis Kelamin</th>
                  <th> Tanggal Lahir</th>
                  <th> Tempat Lahir</th>
                  <th>Kelas</th>
                  <th> Jurusan</th>  
                  <th> Alamat</th>
                  <th> Action</th>
                </tr>
              </thead>
              <?php
                include "koneksi.php";
                $sql = $koneksi->query("SELECT * FROM siswa ORDER BY nis ASC");

                while ($row = $sql->fetch_assoc()) {
              ?>
              <tr>
                <td><?php echo $row['nis']?></td>
                <td><?php echo $row['nama']?></td>
                <td><?php echo $row['jenis_kelamin']?></td>
                <td><?php echo $row['tanggal_lahir']?></td>
                <td><?php echo $row['tempat_lahir']?></td>
                <td><?php echo $row['kelas']?></td>
                <td><?php echo $row['jurusan']?></td>
                <td><?php echo $row['alamat']?></td>
                <td>
                  <a href="detail-siswa.php?id=<?php echo $row['siswa_id']?>">
                    <button class="btn btn-xs btn-default"><span class="glyphicon glyphicon-eye-open"></span> Detail</button>
                  </a>
                </td>
              </tr>
              <?php }?>
            </table>
          </div>
        </div>
      </div><!-- Akhir Kolom -->
    </div><!-- Akhir Baris -->
  </div><!-- Akhir Page --><br><br>

  <?php include "footer.php"; ?>