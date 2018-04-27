-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 27 Nis 2018, 18:41:41
-- Sunucu sürümü: 5.7.21
-- PHP Sürümü: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `markerdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restoran_id` int(12) NOT NULL,
  `yemek_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fiyati` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `restoran_id`, `yemek_adi`, `fiyati`) VALUES
(1, 1, 'Hassa Çorbası', 4),
(2, 1, 'Kestaneli Lahana Sarması', 9),
(3, 1, 'Zeytinyağlı Enginar', 10.5),
(4, 1, 'Tulumba Tatlısı', 5),
(5, 2, 'Yayla Çorbası', 5),
(6, 2, 'Paçanga böreği', 8),
(7, 2, 'Tavuk Fajita', 13),
(8, 2, 'Tiramisu', 7),
(9, 3, 'Mercimek Çorbası', 4),
(10, 3, 'Patatesli sigara böreği', 7),
(11, 3, 'Hasan Paşa Köftesi', 13),
(12, 3, 'İrmik Helvası', 4),
(13, 4, 'Ispanaklı Yoğurt Çorbası', 7.5),
(14, 4, 'Patates yatağında mantar', 12),
(15, 4, 'Hünkar Beğendi', 18),
(16, 4, 'Pancake', 9.5),
(17, 5, 'Ovmaç Çorbası', 4),
(18, 5, 'Kırmızı köz biber kızartması', 6.5),
(19, 5, 'Keşkek', 6.5),
(20, 5, 'Baklava', 7.5),
(21, 6, 'Patates Çorbası', 3),
(22, 6, 'Bamya kızartması', 6),
(23, 6, 'Et Yemeği', 9),
(24, 6, 'Revani', 5),
(25, 7, 'Arabaşı Çorbası', 6),
(26, 7, 'Tel şehriyeli patates köfte', 10),
(27, 7, 'Fırında Karnabahar', 8),
(28, 7, 'Ağlayan Pasta', 7),
(29, 8, 'Unlu Mercimek Çorbası', 5),
(30, 8, 'Avcı böreği', 9),
(31, 8, 'Sulu Köfte', 12),
(32, 8, 'Sütlaç', 5),
(33, 9, 'Kremalı Tavuklu Havuç Çorbası', 8),
(34, 9, 'Mantar graten', 15),
(35, 9, 'Kıymalı Nohut Yemeği', 11),
(36, 9, 'Muhallebi', 7),
(37, 10, 'Süzme Yoğurtlu Çorba', 5),
(38, 10, 'Humus Yatağında Sucuk & Hellim', 15),
(39, 10, 'Tavuk Döner', 7),
(40, 10, 'Kalburabastı', 9),
(41, 11, 'Arpa Şehriyeli Çorba', 7),
(42, 11, 'Sıcak Ot', 14),
(43, 11, 'Patates Püreli Tavuk Sote', 16),
(44, 11, 'Ayva Tatlısı', 8),
(45, 12, 'Tavuk Taşlığı Çorbası', 5),
(46, 12, 'Kabak kızartması', 9),
(47, 12, 'Patlıcanlı Patatesli Musakka', 13),
(48, 12, 'Şekerpare', 6),
(49, 13, 'Etli Düğün Çorbası', 7),
(50, 13, 'Karışık Sebzeli Mantar Dolması', 15),
(51, 13, 'Fırında Kaşarlı Et Sote', 16),
(52, 13, 'Şerbetli İrmik Tatlısı', 8),
(53, 14, 'Kırmızı Biberli Pirinç Çorbası', 8),
(54, 14, 'Kalamar Tava', 18),
(55, 14, 'Buğu Kebabı', 21),
(56, 14, 'Fırın Sütlaç', 10),
(57, 15, 'Lahana Çorbası', 7),
(58, 15, 'Mantarlı Karides Güveç', 17),
(59, 15, 'Bodrum Kebap', 19),
(60, 15, 'Ispanaklı Kek', 8),
(61, 16, 'Buğday Çorbası', 6),
(62, 16, 'Fırında Peynirli Sebze Kroket', 17),
(63, 16, 'Kuru Fasulye', 9),
(64, 16, 'Kazandibi', 10),
(65, 17, 'Tarhana Çorbası', 6),
(66, 17, 'Dolgulu Patates Kroket', 13),
(67, 17, 'Parmak Kebabı', 15),
(68, 17, 'İsveç Keki', 8),
(69, 18, 'Pazılı Bulgur Çorbası', 8),
(70, 18, 'Peynirli Patlıcan Ruloları', 17),
(71, 18, 'Fırında Püreli Köfte', 16),
(72, 18, 'Lokma Tatlısı', 8),
(73, 19, 'Nohutlu Tel Şehriye Çorbası', 7),
(74, 19, 'Cheddar Dolgulu Mücver', 15),
(75, 19, 'Tavada Tavuk Kanat', 16),
(76, 19, 'Bal Kabağı Tatlısı', 10),
(77, 20, 'Yıldız Çorba', 8),
(78, 20, 'Kıymalı Tortilla Böreği', 17),
(79, 20, 'Bahçıvan Kebabı', 20),
(80, 20, 'Saray Lokumu', 11),
(81, 21, 'Mercimek Çorbası', 5),
(82, 21, 'Adana Dürüm', 12),
(83, 21, 'Fıstıklı Kebap', 9),
(84, 21, 'Tavuk Şiş', 9),
(85, 22, 'Patlıcan Salatası', 16.5),
(86, 22, 'Zeytinyağlı Yaprak Sarması', 18.5),
(87, 22, 'İmam Bayıldı', 21.5),
(88, 22, 'Karides Kokteyl', 52.5),
(89, 23, 'Günün Çorbası', 5),
(90, 23, 'Kuru Fasülye', 7),
(91, 23, 'Beyti', 22),
(92, 23, 'Buhara Özel Kebap', 30),
(93, 24, 'Günün Çorbası', 5),
(94, 24, 'Pilav', 10),
(95, 24, 'Biftek', 32),
(96, 24, 'İskender Kebap', 50),
(97, 25, 'Chef\'s Daily Soup', 10),
(98, 25, '1 Posiyon Meze', 12),
(99, 25, 'Zeytinyağlı Kombinasyonu', 30),
(100, 25, 'Türk Peynirleri Tahtası', 30),
(101, 26, 'Ezo Gelin', 6),
(102, 26, 'Makarna', 10),
(103, 26, 'Tas Kebabı', 20),
(104, 26, 'Fırın Sütlaç', 8),
(105, 27, 'Günün Çorbası', 6),
(106, 27, 'Urfa Peyniri', 16),
(107, 27, 'Zeytinyağlı Dolma', 16),
(108, 27, 'Fıstıklı Baklava', 12),
(109, 28, 'Günün Çorbası', 4),
(110, 28, 'Tavuklu Sandviç', 10.5),
(111, 28, 'Orta Boy Pizza', 12.5),
(112, 28, 'Patates Tava', 7.5),
(113, 29, 'Günün Çorbası', 8),
(114, 29, 'Kahvaltı Tabağı', 18),
(115, 29, 'Konya İşi Pide', 21),
(116, 29, 'Kiremitte Kebap', 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `restoranlar`
--

DROP TABLE IF EXISTS `restoranlar`;
CREATE TABLE IF NOT EXISTS `restoranlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restoran` varchar(255) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `imgloc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `restoranlar`
--

INSERT INTO `restoranlar` (`id`, `restoran`, `longitude`, `latitude`, `imgloc`) VALUES
(1, 'Kanaat Lokantası', 41.1594, 27.8036, 'http://www.imgim.com/kanaat.jpeg'),
(2, 'Özgün Restoran', 41.1591, 27.8015, 'http://www.imgim.com/ozgun.jpg'),
(3, 'Çin Çin Restoran', 41.1589, 27.8049, 'http://www.imgim.com/cincin.jpg'),
(4, 'Ecce Restoran', 41.1606, 27.8046, 'http://www.imgim.com/ecce.jpg'),
(5, 'Buhara Restoran', 41.16, 27.8058, 'http://www.imgim.com/6058inciw9055461.jpg'),
(6, 'Kofteci Ramiz Çorlu', 41.1583, 27.8038, 'http://www.imgim.com/kofteci-ramiz.jpg'),
(7, 'Tekirdağ Köftecisi', 41.1611, 27.8025, 'http://www.imgim.com/tekirkof.jpeg'),
(8, 'Özcan Restaurantlar', 41.1606, 27.8068, 'http://www.imgim.com/ozcan-rest.jpg'),
(9, 'Sultanahmet Köftecisi Silivri', 41.0753, 28.2492, 'http://www.imgim.com/sultkof.jpg'),
(10, 'Alya Restoran', 41.0732, 28.251, 'http://www.imgim.com/alya.jpg'),
(11, 'Çiğköftem', 41.0747, 28.2506, 'http://www.imgim.com/cigkoftem.jpg'),
(12, 'Çatı Cafe Restaurant', 41.0747, 28.2491, 'http://www.imgim.com/catires.jpg'),
(13, 'Balaban Restoran', 41.0744, 28.253, 'http://www.imgim.com/balaban.jpg'),
(14, 'Bizim Ev Fasfood Ve Kahvalti ', 40.1431, 29.981, 'http://www.imgim.com/bizimev.jpg'),
(15, '228 Çarşı Lokantası', 40.1425, 29.9802, 'http://www.imgim.com/228carsilok.jpg'),
(16, 'Lezzet Durağı', 40.1425, 29.9789, 'http://www.imgim.com/lezzdur.jpg'),
(17, 'Paşam Kebap', 39.9325, 32.8668, 'http://www.imgim.com/pasamkeb.jpg'),
(18, 'Hanzade Konağı', 39.9335, 32.8664, 'http://www.imgim.com/3338incip6742318.jpg'),
(19, 'Centilmen Piknik Restoran', 39.933, 32.8697, 'http://www.imgim.com/centilmen.jpg'),
(20, 'Saray Ocakbaşı Restoran', 39.9322, 32.8682, 'http://www.imgim.com/sarayoc.jpg'),
(21, 'Tarihi Eminönü Dürümcüsü', 41.0144, 28.9748, 'http://www.imgim.com/eminonu-durum.jpg'),
(22, 'Constantines Ark', 41.013, 28.9771, 'http://www.imgim.com/constantines.jpg'),
(23, 'Buhara Ocakbaşı Restaurant', 41.0104, 28.9752, 'http://www.imgim.com/buhara-ocak.jpg'),
(24, 'Havuzlu Restaurant', 41.0107, 28.9671, 'http://www.imgim.com/havuzlu.jpg'),
(25, 'Olive Anatolian Restaurant', 41.0124, 28.9776, 'http://www.imgim.com/olive-ana.jpg'),
(26, 'Tatseven Restoran - Eminönü', 41.0168, 28.9733, 'http://www.imgim.com/tatseven.jpg'),
(27, 'Hamdi Restaurant Eminönü', 41.0173, 28.9698, 'http://www.imgim.com/hamdi-res.jpg'),
(28, 'Zorbay Cafe Restoran', 41.0136, 28.9612, 'http://www.imgim.com/zorbay.jpg'),
(29, 'Karadeniz Aile Pide & Kebap', 41.0086, 28.9749, 'http://www.imgim.com/karadeniz-aile.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
