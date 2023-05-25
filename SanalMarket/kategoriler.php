 
    <div class="col-12">
    <h5 class="mt-1 text-secondary  mb-2">Mağazamızın Sizin İçin Özel Seçtiği Ürünler</h5>

    </div>
         <!--İÇERİK BÖLÜMÜ BAŞLANGIÇ--> 

         <?php 

                $sorgu = $db->prepare("SELECT * FROM urunler where kategori=? ");

                $sorgu->execute([$_GET["kategori"]]);

                $urunler = $sorgu->fetchAll(PDO::FETCH_ASSOC);
            if ($sorgu->rowCount()) {
              foreach ($urunler as $urun)
                {
                   echo '
                    <div class="col-12 col-lg-3 col-md-4 ">
                        <img width="100%" src="img/'.$urun["resim"].'" />
                        <h3>'.$urun["urunadi"].'</h3>
                        <p >Fİyatı:'.$urun["fiyat"].'TL</p>
                        <a href="index.php?sayfa=detay&id='.$urun["id"].'"><button class="btn btn-success">İncele</button></a>
                        <a href="#"><button class="btn btn-primary">Sepete At</button></a>';
                        if ($urun["stok"]!=0) 
                        {
                            echo '<p style="color: #0C7C1E;">Stok Durumu: Stokta Var</p>';
                        }
                        else
                        {
                           echo '<p style="color: #C30D0D;">Stok Durumu: Stokta Yok</p>'; 
                        }
  
                    echo '</div>';
                }
                echo $sorgu->rowCount().' adet ürün listelenmiştir';
                            }
            else
            {
                echo $_GET["kategori"]. "kategorisinde ürün bulunmamaktadır.";
            }
                
          ?>      
            }
       <!--İÇERİK BÖLÜMÜ BİTİŞ-->