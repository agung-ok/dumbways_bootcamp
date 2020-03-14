/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.1.19-MariaDB : Database - socmed
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`socmed` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `socmed`;

/*Table structure for table `comments_tb` */

DROP TABLE IF EXISTS `comments_tb`;

CREATE TABLE `comments_tb` (
  `comment_id` int(25) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `post_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_tb_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts_tb` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `comments_tb` */

insert  into `comments_tb`(`comment_id`,`comment`,`post_id`) values (6,'Oh My God o_o',2),(17,'Good',3),(18,'jenis binatang?\r\n',8),(19,'jumlah binatang?',8),(20,'kebun binatang mana?',8);

/*Table structure for table `posts_tb` */

DROP TABLE IF EXISTS `posts_tb`;

CREATE TABLE `posts_tb` (
  `post_id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `user_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_tb_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tb` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `posts_tb` */

insert  into `posts_tb`(`post_id`,`title`,`content`,`user_id`) values (2,'Bill Gates Mundur dari Microsoft','KOMPAS.com - Pendiri Microsoft, Bill Gates, memutuskan untuk melepas jabatannya sebagai dewan direksi di Microsoft. Selain Microsoft, ia juga mundur dari jabatan yang ia duduki di perusahaan asuransi Berkshire Hathway. Keputusan tersebut ia umumkan melalui sebuah tulisan singkat berjudul \"Focusing My Time\". Pria berusia 64 tahun ini mengatakan dirinya ingin menghabiskan waktu lebih banyak untuk mendalami bidang filantropi. \"Saya ingin mendedikasikan lebih banyak waktu saya untuk berfokus pada bidang filantropi pada aspek kesehatan, pembangunan global, pendidikan dan mengatasi perubahan iklim,\" tulis Bill Gates. Meski telah menyatakan mundur dari jajaran dewan direksi, Bill Gates menyebut dirinya masih akan terlibat dengan Microsoft, meski keterlibatannya tidak sebanyak dulu. Ia masih akan bertindak sebagai \"penasihat teknologi\" untuk Satya Nadella. \"Saya akan terus membantu Satya Nadella dalam membentuk visi dan mencapai tujuan utama perusahaan,\" imbuh Bill Gates. Bill Gates menduduki jabatan sebagai Dewan Direksi setelah Satya Nadella diangkat sebagai CEO Microsoft pada 2014 lalu. Baca juga: CEO Microsoft Hadiri Indonesia Digital Economy Summit 2020 di Jakarta Selama ini, Bill Gates memang sering membuat kegiatan sosial. Bahkan, ia juga turut berpartisipasi dalam membantu menanggulangi wabah pandemik virus corona. Gates mendirikan Microsoft pada tahun 1975 bersama Paul Allen. Ia menjabat sebagai CEO Microsoft hingga tahun 2000. Setelah melepas jabatannya sebagai CEO, Bill Gates kemudian fokus di yayasan amalnya bersama sang istri, Melinda. Dirangkum KompasTekno dari The Verge, Sabtu (14/3/2020), melalui Yayasan Bill & Melinda, ia menggelontorkan dana sebesar 100 juta dollar AS (Rp 1,3 triliun) untuk memerangi persebaran virus corona. Penyerahan donasi tersebut diserahkan kepada Organisasi Kesehatan Dunia (WHO) dan beberapa otoritas kesehatan masyarakat di China.',1),(3,'Yahoo Mobile Kini Berubah Haluan Jadi Operator Seluler\r\n','KOMPAS.com - Pada tahun 2016 lalu, perusahaan telekomunikasi asal Amerika Serikat, Verizon, secara resmi mengakuisisi Yahoo Inc. Verizon pun kini meluncurkan sebuah sub-brand baru bernama Yahoo Mobile. Berbeda dengan Yahoo yang selama ini dikenal, Yahoo Mobile tidak bergerak pada layanan mesin pencari, e-mail, atau direktori. Yahoo Mobile merupakan operator seluler yang menggunakan model bisnis Mobile Virtual Network Operator (MVNO). Sebagai penyelenggara MVNO, Yahoo Mobile akan menggunakan infrastruktur milik Verizon yang sudah tersedia di Amerika Serikat. Dengan demikian, Yahoo Mobile tidak perlu lagi menggelar infrastruktur jaringan secara mandiri. Secara struktur, Yahoo Mobile sejajar dengan layanan Yahoo lainnya seperti Yahoo Mail, Yahoo Search, atau Yahoo Weather. Berdasarkan halaman resmi Yahoo Mobile, operator telekomunikasi ini menyediakan paket internet unlimited dengan harga 40 dollar AS (Rp 580.000) per bulan. Baca juga: Yahoo Masih Intip Isi E-mail untuk Dijual ke Pengiklan Dengan harga ini, pengguna akan dapat menikmati internet 4G, SMS, dan panggilan telepon tanpa batasan. Adapun kecepatan internet yang ditawarkan disebut bisa mencapai 12 Mbps (download) dan 5 Mbps (upload). \"Semua yang Anda sukai ada di ujung jari Anda. Paket data, SMS, dan panggilan tanpa batas, semuanya di Jaringan 4G LTE Verizon, ditambah hotspot seluler untuk berbagi data dengan perangkat lain,\" tulis pihak Yahoo Mobile.Internet unlimited ini juga bisa dibagikan kepada perangkat lain melalui hotspot atau tethering. Namun, Yahoo Mobile membatasi hanya satu perangkat yang dapat terhubung dengan hotspot tersebut. Itu pun kecepatan download-nya hanya terbatas hingga 5 Mbps. Selain layanan internet unlimited, pelanggan Yahoo Mobile juga akan mendapatkan benefit Yahoo Mail Pro, atau akses e-mail tanpa iklan (ad-free), serta tambahan cloud storage sebesar 1 TB. Perlu dicatat, untuk menggunakan layanan operator Yahoo Mobile, pengguna harus memiliki akun Yahoo untuk mendapatkan benefit tersebut. \"Kami adalah satu-satunya paket internet yang memberi Yahoo Mail Pro untuk email bebas iklan di semua perangkat,\" tulis pihak Yahoo Mobile. Bagi yang belum memiliki ponsel, pihak Yahoo juga menawarkan bundling Yahoo Mobile dengan sejumlah smartphone terbaru, seperti Google Pixel 4, iPhone 11 Pro, Samsung Galaxy S10e, Motorola Moto Z4, dan lain sebagainya. Sebagai informasi, Yahoo Inc. diakuisisi oleh Verizon pada 2016 lalu. Kala itu, keduanya menandatangani kesepakatan di mana Verizon mengambil alih operasi bisnis utama Yahoo dengan nilai 4,83 miliar dollar AS (sekitar Rp 63 triliun) secara tunai.\r\n',2),(4,'Ada Malware Menyamar di Situs Peta Penyebaran Corona ','Jakarta, CNN Indonesia -- Peneliti keamanan siber menyebut muncul situs palsu yang mengatasnamakan diri sebagai peta virus corona SARS-COV-2. Padahal situs tersebut telah disusupi malware. Pelaku kejahatan siber membuat situs yang menyajikan peta persebaran virus corona di seluruh dunia, mirip dengan yang dibuat oleh Universitas Johns Hopkins. Ini adalah salah satu situs peta penyebaran corona yang paling komprehensif. Malware ini terunduh dan dipasang ke perangkat pengguna ketika mereka melakukan pencarian soal peta penyebaran virus corona di internet.\r\nFile yang diunduh itu memang menampilkan peta persebaran corona namun dibalik layar, malware tengah bekerja. Malware jenis AZORult segaja disusupi di situs yang menjanjikan untuk menyajikan informasi soal Covid-19.\r\n\r\n\r\nMalware ini akan mengambil beberapa informasi sensitif seperti nomor kartu kredit, kredensial login, dan informasi lainnya.\r\n\r\nMenurut analis keamanan siber dari Reason Labs, Shai Alfasi, malware AZORult mendapat data tersebut dari hasil mengumpulkan informasi yang disimpan di browser web dan riwayat penelusuran.\r\n\r\n\"Malware AZORult sendiri diketahui telah lama dibahas oleh salah satu forum bawah tanah Rusia, sebagai alat untuk mengumpulkan data sensitif dari komputer,\" tulis Alfasi lewat situs Reason Secutiry dikutip Hacker News.\r\nWabah virus corona novel (Covid-19) yang semakin masif, banyak masyarakat dunia yang berlomba-lomba mencari informasi soal virus itu secara online.\r\n\r\nAlhasil, perilaku itu dimanfaatkan oleh sejumlah pelaku kejahatan siber demi meraup keuntungan dengan mencuri beberapa informasi pribadi lewat situs palsu yang sengaja dibuat terkait corona.\r\n\r\nLebih lanjut, analisis Alfasi lewat blog Reason Security menunjukkan bahwa malware tertanam di dalam file yang diberi nama Corona-virus-Map.com.exe. File ini merupakan jenis Win32 EXE dengan ukuran payload 3,26MB.\r\n\r\nPada situs tersebut, jumlah kasus yang dikonfirmasi di berbagai negara disajikan di sisi kiri sementara statistik jumlah kematian dan pemulihan pasien corona ditempatkan di sebelah kanan.\r\nPelaku menggunakan API untuk mendeskripsikan kata sandi yang disimpan. Hal ini merupakan metode umum yang digunakan oleh para pencuri data.\r\n\r\nAlfasi menyebut tindakan mereka cukup sederhana, karena hanya menggaet data login dari browser yang terinfeksi dan memindahkannya ke folder C:WindowsTemp.\r\n\r\nIa menilai hal itu merupakan salah satu keunggulan malware AZORult, di mana malware mengekstrak data, menghasilkan ID yang unik, menerapkan enkripsi XOR, dan memulai komunikasi C2.\r\n\r\nAlfasi pun membeberkan bagaimana cara menghapus dan menghentikan AZORult, yaitu dengan menyematkan sistem perlindungan malware yang tepat. Sebab, bakal sulit jika menghapus infeksi menggunakan cara konvensional.                    ',3),(8,'Artikel Kebun Binatang DumbWays','Suara.com - Setelah meluncur global di India pada pekan lalu, aplikasi streaming musik sosial pertama di dunia, Resso, resmi hadir di Indonesia pada Rabu (12/3/2020).\r\n\r\nBerbeda dengan aplikasi streaming musik lainnya seperti Spotify, Resso dirancang untuk generasi muda dengan memberikan pengalaman unik berkat adanya fitur social sharing.\r\n\r\nâ€œResso diciptakan untuk merevolusi cara kita mendengarkan musik dengan mendekatkan jarak yang ada antara streaming musik dengan interaksi antarpendengar,\" kata Tricia Dizon, Country Manager Resso Indonesia di Jakarta pada Rabu (11/3/2020).\r\n\r\nBeberapa kelebihan Resso misalnya fitur berbagi lirik, vibes yang memberikan kebebasan kepada pengguna untuk membuat video, gif, atau gambar berdasarkan lagu yang dapat dibagikan, dan fitur komentar.\r\n\r\nBeralih ke antarmuka, tampilan Resso dirancang untuk memberikan interaksi langsung kepada setiap pengguna dan memudahkan mereka dalam menemukan musik-musik baru.\r\n\r\nKetika aplikasi dibuka, pengguna dapat langsung menikmati format scroll tanpa batas yang akan memperkenalkan mereka kepada artis-artis baru dan mempermudah penggemar menemukan genre dan lagu yang disukai.\r\n\r\nSedangkan untuk memudahkan kategori musik dalam pencarian, Resso membaginya ke dalam beberapa subgenre, seperti fusion, post rock, indie rock.\r\n\r\nPengguna Resso juga dapat mengunduh aplikasi secara gratis dengan katalog musik yang sangat luas. Untuk fitur-fitur lainnya seperti download, unlimited skips, dan audio yang berkualitas tinggi, penguna dapat berlangganan paket premium setiap bulannya dengan harga Rp 49,000 untuk Android dan Rp. 59,000 untuk iOS.',4);

/*Table structure for table `user_tb` */

DROP TABLE IF EXISTS `user_tb`;

CREATE TABLE `user_tb` (
  `user_id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `user_tb` */

insert  into `user_tb`(`user_id`,`name`) values (1,'Kevin Rizky Pratama'),(2,'Bill Clinten'),(3,'CNN Indonesia'),(4,'Asep DumbWays'),(5,'Asep DumbWays'),(6,''),(7,'kfskd'),(8,'Asep DumbWays'),(9,''),(10,'Asep DumbWays');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
