<style type="text/css">
	.show{
    color: #111;
    position: absolute;
    right: 15px;
    top:15px;
    font-weight: bold;
    font-size: 14px;
    cursor: pointer;
    user-select: none;
    visibility: hidden;
	}
	input:valid ~ .show{
		visibility: visible;
	}
</style>
<div class="container " style="width: 450px;height: 600px; ">
<div style="padding: 20px;box-sizing: border-box;box-shadow: 0px 0px 10px #ccc;margin-top: 20px;">
 	<form method="POST" acction="">
		
 
 
	<h3 class="mt-2 text-center">ÜYE GİRİŞİ</h3>
	<div class="row mt-3">
		
		<div class="input-group input-group-lg">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="addon-wrapping"><i class="fa fa-envelope"></i></span>
	  </div>
	  <input type="email" name="eposta" class="form-control" placeholder="Eposta Adresinizi Girin" aria-label="" aria-describedby="addon-wrapping">
	</div>
	<div class="input-group input-group-lg mt-3" style="position: relative;">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="addon-wrapping"><i class="fa fa-key"></i></span>
	  </div>
	  <input type="Password" name="sifre" class="form-control pswrd" placeholder="Parolanızı Girin" aria-label="" aria-describedby="addon-wrapping" >
	  <span class="show">GÖSTER</span>
	</div>	
	
	</div>
	<div class="row mt-4">
	<div class="input-group w-100" >
		<button class="btn btn-outline-success btn-lg w-100  " name="uyegiris">GİRİŞ YAP</button>	
	</div>
	</div>
	<div class="row mt-3">
	<div class="col-12" >
		<p class="text-center">veya Hızlı Giriş İçin</p>	
	</div>
		
	</div>
	<div class="row mt-3">
	<div class="col-6" >
		<button class="btn btn-outline-primary w-100"><i class="fab fa-facebook mr-3"></i>Facebook</button>	
	</div>
	
	<div class="col-6" >
		<button class="btn btn-outline-danger w-100"><i class="fab fa-google mr-3"></i>Google</button>	
	</div>	
	</div>

	<div class="row m-3">
		<div class="col-5">
			   <input type="checkbox" class="form-check-input" id="exampleCheck1">
    		<label class="form-check-label" for="exampleCheck1">Beni Unutma</label>
			
		</div>
		<div class="col-1"></div>
		<div class="5"><button class="btn btn-link ">Şifremi Unuttum</button></div>
	</div>

</form>
<script >
	var input=document.querySelector('.pswrd');
	var show=document.querySelector('.show');
	show.addEventListener('click',active);
	function active(){
		if(input.type==="password"){
			input.type="text";
			show.style.color="#1DA1F2";
			show.textContent="GİZLE";

		}
		else{
			input.type="password";
			show.style.color="#111";
			show.textContent="GÖSTER";
		}
	}
</script>

<?php 
		if (isset($_POST["uyegiris"])) 
		{
			$sorgu = $db->prepare("SELECT * FROM kullanici where eposta=? and sifre=?");

            $sorgu->execute([$_POST["eposta"],$_POST["sifre"]]);

            $kullanici = $sorgu->fetch(PDO::FETCH_ASSOC);

            if ($sorgu->rowCount()) 
            {
            	$_SESSION['adsoyad'] = $kullanici["adsoyad"];
            	$_SESSION['eposta']  = $kullanici["eposta"];
            	$_SESSION['id']      = $kullanici["id"];
            	$_SESSION['sifre']   = $kullanici["sifre"];

            	echo "<div class='alert alert-success'>Üye Girişi Başarılı.</div>";
            	header("Refresh:2;url=index.php");
            }
            else
            {
            	echo "<div class='alert alert-danger'>Eposta veya Şifre Hatalı.</div>";
            	header("Refresh:2;url=index.php?sayfa=login");
            }
		}
 ?>
</div>
  
</div>