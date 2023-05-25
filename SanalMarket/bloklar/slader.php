<!--En Çok Tercih edilenler başlangıç-->
  <div class="row mt-2">
       <div class="col-12">
        <h5 class="mt-1 text-success mb-2">En Çok Tercih Edilen Ürünler</h5>
            <div class="owl-carousel owl-theme">
                   
            <?php                 

                $sorgu = $db->prepare("SELECT * FROM urunler WHERE stok>0 order by hit desc limit 10");

                $sorgu->execute();

                $urunler = $sorgu->fetchAll(PDO::FETCH_ASSOC); 

                foreach ($urunler as $urun) 
                {
                   echo '
                    <div class="item">                   
                        <a href="index.php?sayfa=detay&id='.$urun["id"].'"><img src="img/'.$urun["resim"].'" style="width: 100px;"></a>
                    
                        <h6 >'.$urun["urunadi"].'</h6> 
                        <p>Fiyatı:'.$urun["fiyat"].'TL</p>                        
                   
                    </div>';
                }
                ?>

     
            </div> 
        </div>
  </div>
         
       <!--En Çok Tercih edilenler bitiş-->