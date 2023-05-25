<?php 

    $sorgu = $db->prepare("SELECT * FROM urunler WHERE id=?");

    $sorgu->execute([$_GET["id"]]);

    $urun = $sorgu->fetch(PDO::FETCH_ASSOC);

    $hitartir=$db->prepare("update urunler set hit=? where id=?");

    $hitartir->execute([
        $urun["hit"]+1,
        $_GET["id"]
    ]);

 ?>

	<div class="container">
			<div class="row">
				<div class="col-12">
					<img src="img/<?php echo $urun["resim"] ?>"/>
					   <table  class="table table-hover">
                            <tr>
                                <td colspan="3"><h2> <?php echo $urun["urunadi"] ?></h2></td>							
                            </tr>
                            <tr>
                                <td><b>Kategori</b></td>
                                <td><b>:</b></td>
                                <td> <?php echo $urun["kategori"] ?></td>
                            </tr>
                            
                             <tr>
                                <td><b>Fiyat</b></td>
                                <td><b>:</b></td>
                                <td> <?php echo $urun["fiyat"] ?>TL</td>
                            </tr>
                            
                             <tr>
                                <td><b>Stok Durumu</b></td>
                                <td><b>:</b></td>
                                <td>
                                    <?php if ($urun["stok"]!=0) 
                        {
                            echo '<p style="color: #0C7C1E;">Stokta Var</p>';
                        }
                        else
                        {
                           echo '<p style="color: #C30D0D;">Stokta Yok</p>'; 
                        } 
                        ?>
                            
                        </td>
                            </tr>
                            
                            <tr>
                                <td><b>Görüntülenme</b></td>
                                <td><b>:</b></td>
                                <td> <?php echo $urun["hit"] ?></td>				
                            </tr>
                            
                            <tr>
                                <td colspan="3">
                                  <a href="#"><button class="btn btn-success">Satın Al</button></a>
                <a href="#"><button class="btn btn-primary">Sepete At</button></a>
                                 </td>
                            </tr>
                                                    
                        </table>
				<h3 >Ürün Açıklaması</h3>
                <hr />
                <p>
                	 <?php echo $urun["aciklama"] ?>
                </p>

				</div>
			</div>
                    
                    
                   
                   
                               
                
                
            </div>
