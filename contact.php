<?php include "header.php"; ?>

                
                <?php 

                    if(@$_GET['pesan']=="inputBerhasil"){

                    ?>
                                    <div class="alert alert-success">
                                    Terima kasih, pesan anda sudah terkirim!
                                    </div>
                    <?php

                    }

                    ?>
                    
                <div id="kontak" class="bg-light py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <h2 class="text-center mb-4">Informasi Kontak</h2>
                                <form action="proses-komentar.php" method="post">
                                    <div class="form-group">
                                        <label for="nama">Nama Lengkap</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fas fa-user"></i></span>
                                            <input type="text" class="form-control" name="nama" placeholder="Isikan nama lengkap anda" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fas fa-envelope"></i></span>
                                            <input type="email" class="form-control" name="email" placeholder="Isikan email anda" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pesan">Pesan</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fas fa-comment"></i></span>
                                            <textarea name="pesan" class="form-control" placeholder="Isikan pesan anda" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Kirim</button>
                                        <button type="reset" class="btn btn-danger"><i class="fas fa-times"></i> Batal</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div> <br><br><br><br><br>

<?php include "footer.php"; ?>