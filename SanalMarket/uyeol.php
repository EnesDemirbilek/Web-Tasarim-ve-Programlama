<div class="container mt-3" style="width: 600px;">
	
<?php 
	
	if (isset($_POST["uyeol"]))
	{

		$eposta 	= $_POST["eposta"];
		$sifre 		= $_POST["sifre"];
		$adisoyadi 	= $_POST["adisoyadi"];
		$sifretek 	= $_POST["sifretekrar"];
		$gizlisoru 	= $_POST["gizlisoru"];
		$cevap 	    = $_POST["cevap"];

		if ($_POST["sifre"]==$_POST["sifretekrar"]) 
		{

			$sorgu = $db->prepare("SELECT * FROM kullanici where eposta=? ");

            $sorgu->execute([$_POST["eposta"]]);

            if ($sorgu->rowCount()) 
            {
            	echo "<div class='alert alert-danger'>Daha Önce Bu Epostayla Kayıt Yapılmıştır!..</div>";
            }

            else
            {
	            $sorgu = $db->prepare("INSERT INTO kullanici SET 
		    	eposta=?,
		    	sifre=?,
		    	adsoyad=?,
		    	k_tarihi=?,
		    	onay=?,
		    	gsoru=?,
		    	cevap=?,
		    	yetki=?

		    	");

		    	$kullanici = $sorgu->execute([
		    	$eposta,
		    	$sifre,
		    	$adisoyadi,
		    	date("Y-m-d"),
		    	"0",
		    	$gizlisoru,
		    	$cevap,
		    	"0"
					
				]);

				if ($kullanici) 
				{
					echo "<div class='alert alert-success'>Kayıt Başarılı!..</div>";
					header("Refresh:2;url=index.php");
				}
				else
				{
					echo "<div class='alert alert-danger'>Kayıt Başarısız!..</div>";	
				}
	        }
		}
		else
		{
			echo "<div class='alert alert-danger'>Girilen Şifre Uyumsuz</div>";
		}	
	}
?>	
	<h3 align="center">ÜCRETSİZ ÜYE OLUN</h3>
	<form method="POST" action="">
		<div class="input-group-lg">
			<input type="text" class="form-control input-group-lg" name="adisoyadi" placeholder="Adınızı Soyadınızı Girin">

			<input type="email" class="form-control mt-3" name="eposta" placeholder="Eposta Adresinizi Girin">

			<input type="password" class="form-control mt-3" name="sifre" placeholder="Şifrenizi Girin">

			<input type="password" class="form-control mt-3" name="sifretekrar" placeholder="Şifrenizi Tekrar Girin">

			<select class="form-control mt-3" name="gizlisoru">
				<option>İlkokul Öğretmeninizin Adı</option>
				<option>Çocukluk Arkadaşınızın Adı</option>
				<option>Köpeğinizin Adı</option>
			</select>

			<input type="text" class="form-control mt-3" name="cevap" placeholder="Cevabınızı Girin">
			<button class="btn btn-primary mt-3 mb-5 p-3 w-100" name="uyeol">Üye Ol</button>
		</div>
	</form>
</div>
