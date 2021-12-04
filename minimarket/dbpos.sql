# Host: localhost  (Version 5.6.16)
# Date: 2017-08-15 06:16:32
# Generator: MySQL-Front 6.0  (Build 1.82)


#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `level` varchar(10) NOT NULL,
  `blokir` varchar(2) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "admin"
#

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('gudangcoding','admin','Administrator','administrator@gmail.com','081267771344','Admin','N','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

#
# Structure for table "kategori_produk"
#

DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE `kategori_produk` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "kategori_produk"
#

/*!40000 ALTER TABLE `kategori_produk` DISABLE KEYS */;
INSERT INTO `kategori_produk` VALUES (18,'Media'),(19,'Penerangan'),(20,'Perabot'),(21,'Rumah tangga'),(23,'Bumbu Dapur'),(24,'rere\'rere'),(25,'fdsfs\'zsds');
/*!40000 ALTER TABLE `kategori_produk` ENABLE KEYS */;

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "orders"
#

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (144,'Winda','2014-09-03','20:28:05'),(145,'Winda','2014-09-06','11:05:04'),(146,'Agung Priambada','2015-01-22','02:02:06'),(147,'Agung Priambada','2015-01-22','02:42:24'),(148,'Agung Priambada','2015-01-22','03:32:35'),(149,'Agung Priambada','2015-01-22','03:52:37'),(150,'Agung Priambada','2015-01-28','23:49:38'),(151,'Winda','2017-08-15','01:08:28'),(152,'Winda','2017-08-15','01:10:14'),(153,'Winda','2017-08-15','01:11:55');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

#
# Structure for table "orders_detail"
#

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "orders_detail"
#

/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES (145,87,1),(145,96,2),(145,88,1),(145,95,3),(144,96,3),(144,84,1),(144,95,2),(146,86,2),(146,84,1),(146,97,3),(147,100,2),(147,101,1),(148,89,1),(148,97,3),(149,101,1),(149,97,3),(150,101,12),(150,97,12),(151,97,5),(152,88,1),(153,92,1);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;

#
# Structure for table "orders_temp"
#

DROP TABLE IF EXISTS `orders_temp`;
CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "orders_temp"
#


#
# Structure for table "produk"
#

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `id_supplier` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `harga_grosir` int(20) NOT NULL,
  `harga_pokok` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `satuan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `berat` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `diskon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "produk"
#

/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES (82,18,1,'PS 2','',15000,14800,14000,9,'kotak','1','0','2014-05-25',2),(83,19,2,'senter police','',20000,19000,15000,19,'kotak','1','0','2014-05-25',2),(84,18,3,'Camera Digital Sony DCS-W710  16.1','',13000,12000,10000,57,'kotak','0','0','2014-05-25',3),(85,21,1,'Sterika Philips Classic','',25000,22000,20000,10,'kotak','2','0','2014-05-25',1),(86,21,2,'Sterika Philips Light Care','',29000,28000,25000,4,'kotak','2','0','2014-05-25',3),(87,18,2,'Speaker Aktif Roadstone','',20000,19000,12000,2,'kotak','7','0','2014-05-25',3),(88,18,1,'DVD Player','Kotak ajaib yang bisa mengeluarkan suara',700000,500000,500000,19,'unit','0','10','2014-05-25',3),(89,21,3,'Blender philips Plastik','kuat dan tahan banting , anti pecah, mampu menghancurkan es batu menjadi kepingan kecil. dll',20000,19000,15000,55,'kotak','0','0','2014-05-25',4),(91,20,3,'Pompa air panasonic','daya tekanan kuat',35000,34000,30000,13,'kotak','0','0','2014-05-25',5),(92,19,2,'lampu sorot philips tempo','jarak sorot sampai 20m\r\ncahaya putih dan terang\r\n200watt',50000,49000,40000,3,'kotak','5','0','2014-05-25',6),(93,18,2,'Radio karcher','',25000,23000,15000,4,'kotak','4','0','2014-05-25',6),(94,21,2,'Magic com rice cooker cosmos ','kapasitar 3liter beras\r\nbisa buat kukus \r\npenanak dan pemanas',25000,22000,20000,0,'Buah','5','0','2014-05-25',11),(95,21,3,'mesin-cuci-SHARP ES-T96CA','bisa menampung 8kg pakaian kotor\r\nada pengering',20000,15000,10000,9,'Kotak','0','0','2014-05-25',11),(96,21,3,'sabun Sinzui','sabun mantapp,..',5000,4800,3000,192,'Kotak','0','0','2014-06-26',9),(97,23,2,'ajinomoto','Bubuk ajaib yang membuat makanan enak',1000,900,900,474,'Bungkus','0','0','2014-09-01',27),(100,20,2,'Guci Super Kinclong','Guci yang memiliki Sinar terang disetiap sudutnya',50000,45000,40000,13,'Buah','0','0','2015-01-21',3),(101,23,1,'Bubuk Mesiu','Bagus untuk membuat peluru',9000,7000,6500,3,'Kantong','0','50','2015-01-22',15);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

#
# Structure for table "supplier"
#

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id_supplier` int(5) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Data for table "supplier"
#

/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Pt Paramount Picture tbk','882 12 1110 2124 812'),(2,'Pt Makmur Rugi',''),(3,'Pt Seroja Sejati','123 1 90897 453 232');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'customer',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_lengkap` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('agung','agung1234','Agung Priambada','apriambada@yahoo.co.id','081338311051','customer','Y','asda981921asbdiasda1291231s','Jl. Plawa no. 73; 80236; Br. Pagan Kelod, Sumerta Kauh, Denpasar Timur.'),('winda','1234','Winda','winda@gmail.com','081267771344','customer','Y','8d05dd2f03981f86b56c23951f3f34d7','Tunggul Hitam, Padang'),('yudi','1234','Yudi Hartawan','yudi@hartaw.an','088221122334','admin','Y','01osad0jasdk102kejaos','Denpasar');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
