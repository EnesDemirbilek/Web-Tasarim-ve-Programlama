-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 07 Nis 2020, 09:32:13
-- Sunucu sürümü: 5.7.26
-- PHP Sürümü: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `alisveris`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_adi`) VALUES
(1, 'Giyim'),
(2, 'Elektronik'),
(3, 'Kitap'),
(4, 'Aksesuar'),
(5, 'Ev Eşyası'),
(6, 'Çocuk'),
(7, 'Bilgisayar'),
(8, 'Moda'),
(9, 'Müzik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eposta` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `k_tarihi` date NOT NULL,
  `onay` char(1) COLLATE utf8_turkish_ci NOT NULL,
  `gsoru` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `cevap` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yetki` char(1) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `eposta`, `sifre`, `adsoyad`, `k_tarihi`, `onay`, `gsoru`, `cevap`, `yetki`) VALUES
(1, 'karagozahmet@yahoo.com', '12345', 'Ahmet KARAGÖZ', '2020-04-07', '0', 'İlkokul öğretmeninin Adı', 'Şenol BİLİCAN', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

DROP TABLE IF EXISTS `sepet`;
CREATE TABLE IF NOT EXISTS `sepet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urunadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `urunadi`, `fiyat`, `kullanici_ID`) VALUES
(13, 'Samsung Galaxy S10', '7400', 1),
(14, 'Kinetix ADONA', '120', 1),
(15, 'Canon Eos 1300D', '1670', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urunadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` int(5) NOT NULL,
  `resim` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `hit` int(3) NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `kategori` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `stok` int(3) NOT NULL,
  `onay` char(1) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urunadi`, `fiyat`, `resim`, `hit`, `aciklama`, `kategori`, `stok`, `onay`) VALUES
(2, 'APPLE IPHONE 7 128GB', 4080, '2.jpg', 56, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Elektronik', 2, '1'),
(3, 'Canon Eos 1300D', 1670, '3.jpg', 21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.\"', 'Elektronik', 1, '1'),
(4, 'CANON PIXMA E484', 374, '4.jpg', 64, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Elektronik', 0, '1'),
(5, 'Büyük Miras Nutuk Kitap', 35, '5.jpg', 30, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Kitap', 10, ''),
(6, 'MICROSOFT N9Z-00017', 70, '6.jpg', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.\"', 'Elektronik', 3, ''),
(7, 'Logitech G300S Mouse', 79, '7.jpg', 104, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Elektronik', 0, ''),
(8, 'PHILIPS SHK1031 STEREO', 55, '8.jpg', 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Elektronik', 5, ''),
(9, 'Kinetix ADONA', 120, '9.jpg', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Çocuk', 8, ''),
(10, 'Seiko SNDG57P Kol Saati', 300, '10.jpg', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Aksesuar', 4, ''),
(11, 'Seiko SNDG70P Kol Saati', 220, '11.jpg', 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Aksesuar', 9, ''),
(12, 'Sherlock Holmes', 25, '15.jpg', 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.\"', 'Kitap', 0, ''),
(13, 'Kürk Mantolu Madonna', 32, '13.jpg', 26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Kitap', 3, ''),
(14, 'Cam Kılıç', 18, '14.jpg', 40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Kitap', 10, ''),
(15, 'Garfield Kupa Bardak', 10, '15.jpg', 39, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Ev Eşyası', 3, ''),
(16, 'Üçlü Takım Sehpa', 220, '16.jpg', 28, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Ev Eşyası', 0, ''),
(17, 'Çift Kapaklı Dolap', 140, '17.jpg', 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Ev Eşyası', 9, ''),
(18, 'İki Kişilik Kanepe', 250, '18.jpg', 19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Ev Eşyası', 5, ''),
(19, '6\'lı Yemek Masası', 210, '19.jpg', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Ev Eşyası', 0, ''),
(20, 'HP ATC-780 Kasa', 1250, '20.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Elektronik', 13, ''),
(21, 'PIQUE SLIMFİT MONT', 95, '21.jpg', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Giyim', 25, ''),
(22, 'Fomino Erkek Pantolon', 85, '22.jpg', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Giyim', 0, ''),
(23, 'Lacoste Gömlek', 120, '23.jpg', 29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.\"', 'Giyim', 12, ''),
(24, 'NY Fileli Erkek Şapka', 40, '24.jpg', 34, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis auctor nibh, et sollicitudin neque hendrerit et. Integer nec elit justo. In feugiat diam ac vehicula eleifend. Curabitur tempus lectus eget sapien ullamcorper dapibus. Donec porta scelerisque dui faucibus faucibus. Fusce sit amet iaculis eros. Vestibulum vel fringilla arcu. Sed felis ex, vehicula ut accumsan hendrerit, tincidunt sed dui. Aenean eu purus tempor, eleifend urna sed, auctor justo. Sed lectus dolor, semper in sagittis ut, aliquet auctor arcu. Duis sit amet porta erat.', 'Giyim', 0, ''),
(26, 'HP 2BT20EA', 2799, 'hp.jpg', 12, 'şlemci Tipi	7. Nesil Intel® Core™ i5\r\nİşlemci Modeli	Intel® Core™ i5 7200U   \r\nİşlemci Hızı	2.5GHz     up to 3.1GHz\r\nSistem Belleği	4 GB DDR4 2133 Mhz      Max: 16 GB\r\nSabit Disk   	1 TB 5400 Rpm SATA HDD\r\nEkran Kartı Harici	2 GB AMD Radeon™ 520\r\nEkran Boyutu	15.6\" diagonal HD SVA BrightView WLED-backlit    \"', 'Elektronik', 15, ''),
(27, 'Samsung Galaxy S10', 7400, 'samsung10.jpeg', 25, 'Teknik Özellikler\r\n\r\nİşlemci\r\n\r\nOcta-core\r\n\r\nRam\r\n\r\n8GB\r\n\r\nDahili Hafıza\r\n\r\n128GB\r\n\r\nİşletim Sistemi\r\n\r\nAndorid 9.0\r\n\r\nEkran Boyut/Çözünürlük\r\n\r\n6.4\' QHD+ Dynamic AMOLED 19:9\r\n\r\nTip\r\n\r\nDokunmatik', 'Elektronik', 20, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
