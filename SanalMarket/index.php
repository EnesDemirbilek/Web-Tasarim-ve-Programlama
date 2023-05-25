<?php 
    include("baglanti.php");
    include("bloklar/menu.php");
    include("bloklar/slader.php");

  ?>

    <div class="row">
      
 <?php 

    if (isset($_GET["sayfa"])) 
    {
        $sayfa=$_GET["sayfa"];

        switch ($sayfa) 
        {
            case 'uyeol':
                include("uyeol.php");
            break;

            case 'login':
                include("login.php");
            break;

            case 'detay':
                include("urundetay.php");
            break;
            
            case 'ktg':
                 include("kategoriler.php");
            break;
            
            default:
                include("default.php");
            break;
        }
    }
    else
    {
            include("default.php");
    }

  ?>     
    </div>
    
 <?php 
    
    include("bloklar/footer.php");

  ?>
</body>
</html>
