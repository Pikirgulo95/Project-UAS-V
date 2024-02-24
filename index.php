<?php include "header.php"; ?>

	<div class="container"> <!-- carousel -->
		<div class="row">
			<div class="col-md-12">	
				  <div class="carousel slide" id="contoh-carousel" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#contoh-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#contoh-carousel" data-slide-to="1"></li>
							<li data-target="#contoh-carousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="images/gambar5.jpg">
								<div class="carousel-caption">
									<h2><b>Penerimaan Siswa Baru SMA Negeri 2 Mandrehe TA. 2023/2024 Telah Dibuka!</b></h2><p>
									<a href="pendaftaran.php" class="btn btn-primary btn-utama" role="button">Daftar</a>
									<a href="about.php" class="btn btn-primary btn-danger" role="button">Baca lebih lanjut</a>
								</div>
							</div>

							<div class="item">
								<img src="images/gambar3.jpg">
							</div>

							<div class="item">
								<img src="images/gambar13.jpg">
							</div>

						</div>
						<a class="left carousel-control" href="#contoh-carousel" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Prev</span>
						</a>
						<a class="right carousel-control" href="#contoh-carousel" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
				</div>
			</div>
		</div>
	</div> <br>

<?php include "footer.php"; ?>