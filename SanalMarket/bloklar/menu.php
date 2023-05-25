

<!DOCTYPE html>
<html>
<head>
<title>İYİ ALIŞVERİŞLER DİLERİZ</title>

<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/animate.css">


    <!-- Owl Stylesheets -->
    <link rel="stylesheet" href="owlcarousel/docs/assets/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="owlcarousel/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
    <script src="ckeditor/ckeditor.js"></script>
    <script src="owlcarousel/docs/assets/vendors/jquery.min.js"></script>
   <script src="owlcarousel/docs/assets/owlcarousel/owl.carousel.js"></script>
</head>

<body>
<div class="container" style="box-shadow: 0px 0px 10px #ccc">
   
     <!--MENÜ BÖLÜMÜ BAŞLANGIÇ --> 

   <div class="row bg-info">  
    
   <nav class="navbar navbar-expand-lg navbar-light  w-100 " style="height: 100px" >
  <a class="navbar-brand" href="index.php">SANAL MARKET</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php"><i class="fa fa-home mr-1"></i>Ana Sayfa <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="far fa-envelope-open mr-1"></i>İletisim</a>
      </li>

      <!-Kategoriler  Bölümü Başlangıç-->


      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Kategoriler
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            
          <a class="dropdown-item" href="#">Ürün Seçiniz</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">

        <?php 

          $sorgu = $db->prepare("SELECT * FROM kategori order by kategori_adi asc");

          $sorgu->execute();

          $kategoriler = $sorgu->fetchAll(PDO::FETCH_ASSOC);


              foreach ($kategoriler as $kategori) 
              {
                echo '<a href="index.php?sayfa=ktg&kategori='.$kategori["kategori_adi"].'" class="dropdown-item">'.$kategori["kategori_adi"].'</a><br>';
              }
            ?>
          </a>        
        </div>
      </li>
       
      <!--Kategoriler  Bölümü Bitiş-->

        <!--Hesabım  Bölümü Başlangıç-->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <i class="fa fa-user mr-1"></i> Hesabım
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#"> <i class="fa fa-user mr-1"></i>
                <?php 
                   if (isset($_SESSION['eposta']))
                   {
                    echo($_SESSION["adsoyad"]);
                    echo('
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Sifremi Değiştir</a>
                    <a class="dropdown-item" href="#">Bilgi Güncelleme</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="cikis.php"><button class="btn btn-outline-info w-100">Çıkış Yap</button></a>
                    </div>');
                   }
                   else
                   {
                     echo('
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="index.php?sayfa=login"><button class="btn btn-outline-success w-100">Giriş Yap</button></a>
                      <a class="dropdown-item" href="index.php?sayfa=uyeol">Ücretsiz Üye Ol</a>
                      <a class="dropdown-item" href="#">Şifremi Unuttum</a>
                      </div>');
                   }
                ?>
            </a>
</li>
      <!--Hesabım  Bölümü Bitiş-->
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fas fa-shopping-cart mr-1"></i>Sepetim</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0" method="POST">
      <input class="form-control mr-sm-2" type="search" placeholder="Ara" aria-label="Search">
      <button class="btn btn-success my-2 my-sm-0" type="submit">ARA</button>
    </form>
  </div>
</nav>
  </div> 
  <!--Menü  Bölümü Bitiş-->