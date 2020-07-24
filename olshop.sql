-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 08:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`users_id`, `name`, `email`, `password`, `remember_token`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$FJR2WLtTtlB329Wl72eoieqlwLBmP2MSptrOG2uB0YxSB/NzH302y', '6wk0LwYAGqwEHNM3tCkCwM82Whxw0XaoxGmNU2i25JBGGLotUJfCGblDluUf');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `nama`, `keterangan`, `kategori_id`, `harga`, `stock`, `status_id`) VALUES
(31, 'Gunung Bromo', '<p><strong>Gunung Bromo</strong> <samp>(dari <a href=\"https://id.wikipedia.org/wiki/Bahasa_Sanskerta\">bahasa Sanskerta</a>: <em><a href=\"https://id.wikipedia.org/wiki/Brahma\">Brahma</a></em>, salah seorang Dewa Utama dalam agama <a href=\"https://id.wikipedia.org/wiki/Hindu\">Hindu</a>) atau dalam <a href=\"https://id.wikipedia.org/wiki/Bahasa_Tengger\">bahasa Tengger</a> dieja &quot;Brama&quot;, adalah sebuah <a href=\"https://id.wikipedia.org/wiki/Gunung_berapi\">gunung berapi</a> aktif di <a href=\"https://id.wikipedia.org/wiki/Jawa_Timur\">Jawa Timur</a>, <a href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah <a href=\"https://id.wikipedia.org/wiki/Kabupaten\">kabupaten</a>, yakni <a href=\"https://id.wikipedia.org/wiki/Kabupaten_Probolinggo\">Kabupaten Probolinggo</a>, <a href=\"https://id.wikipedia.org/wiki/Kabupaten_Pasuruan\">Kabupaten Pasuruan</a>, <a href=\"https://id.wikipedia.org/wiki/Kabupaten_Lumajang\">Kabupaten Lumajang</a>, dan <a href=\"https://id.wikipedia.org/wiki/Kabupaten_Malang\">Kabupaten Malang</a>. Gunung Bromo terkenal sebagai objek wisata utama di <a href=\"https://id.wikipedia.org/wiki/Jawa_Timur\">Jawa Timur</a>. Sebagai sebuah <a href=\"https://id.wikipedia.org/wiki/Pariwisata\">objek wisata</a>, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan <a href=\"https://id.wikipedia.org/wiki/Taman_Nasional_Bromo_Tengger_Semeru\">Taman Nasional Bromo Tengger Semeru</a>.</samp></p>\r\n\r\n<p><samp>Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Ia mempunyai sebuah kawah dengan garis tengah &plusmn; 800 meter (utara-selatan) dan &plusmn; 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4&nbsp;km dari pusat kawah Bromo.</samp></p>', 6, 20000, 0, 1),
(32, 'Parangtritis', '<p>Pantai Parangtritis disebut sebagai salah satu lambang kekuatan trimurti di Yogyakarta bersama Gunung Merapi dan Keraton Kesultanan Jogja. Pantai Parangtritis mempunyai elemen air, Gunung Merapi mempunyai elemen api, dan keraton kesultanan berperan sebagai penyeimbang keduanya. Jika ditarik garis lurus, ketiganya berjajar di satu garis yang sama dari utara ke selatan. Tak mengherankan jika pantai ini memiliki peran penting bagi Yogyakarta. Belum lagi kepercayaan yang menyebutkan bahwa Pantai Parangtritis merupakan pintu gerbang Istana Kerajaan Laut Selatan yang dipimpin oleh Kanjeng Ratu Kidul. Konon, ratu ini menyukai warna hijau, oleh karena itu pengunjung pantai tidak disarankan memakai pakaian berwarna hijau atau sesuatu yang buruk akan terjadi. Percaya tidak percaya, sebaiknya Anda menghindari warna hijau saat berkunjung ke tempat wisata ini.<br />\r\n&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Jalan Parangtritis KM 28, Yogyakarta, atau sekitar 30 km dari pusat kota Yogyakarta.<br />\r\n&nbsp;</p>', 6, 3500, 100, 1),
(33, 'Kalibiru', '<p><strong>Wisata kalibiru jogja</strong> &ndash; Salah satu wilayah kabupaten yang berada di sisi barat Daerah Istimewa Yogyakarta adalah Kabupaten Kulonprogo. Wilayah tersebut memiliki banyak <a href=\"https://garasijogja.com/tempat-wisata-di-jogja-terbaru/\" target=\"_blank\">obyek wisata</a> alam yang luar biasa indah, antara lain obyek wisata Kalibiru &nbsp;yang terdapat di Perbukitan Menoreh, tepatnya di Desa Kalibiru, Sermo, Hargowilis, Kecamatan Kokap. Lokasi yang berketinggian sekitar 450 meter di atas permukaan laut tersebut berupa Wisata Alam Hutan Kemasyarakatan.w</p>', 6, 25000, 82, 1),
(34, 'Monumen Jogja Kembali', '<p>Menyusuri Ring Road Utara Yogyakarta, akan tampak dari kejauhan sebuah bangunan putih. Bentuknya kerucut seperti tumpeng, dengan tinggi sekitar 32 meter. Inilah bangunan bersejarah <strong>Monumen Jogja Kembali atau biasa disebut Monjali.</strong></p>\r\n\r\n<p>Monjali dibangun untuk memperingati perebutan kembali Jogja dari tangan Belanda. Inilah mengapa dinamakan Monumen Jogja Kembali. Jika dilihat dari sisi sejarahnya, Monjali memiliki kemiripan dengan gedung Juang 45 Jakarta.</p>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"text-align:center; width:50%\"><strong>Jam Operasional</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">Jam Operasional New Normal</td>\r\n			<td style=\"width:50%\">08.00 &ndash; 14.00 WIB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">Senin &ndash; Jumat</td>\r\n			<td style=\"width:50%\">08.00 &ndash; 16.00 WIB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">Sabtu &ndash; Minggu</td>\r\n			<td style=\"width:50%\">08.00 &ndash; 16.30 WIB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Jl. Ringroad Utara, Jongkang, Sariharjo,Ngaglik,Sleman,Daerah Istimewa Yogyakarta,Indonesia ,55581.</p>\r\n\r\n<p>&nbsp;</p>', 7, 10000, 117, 1),
(35, 'Museum Benteng Vredeburg', '<p>Benteng Vredeburg merupakan salah satu museum peninggalan Belanda yang sangat terkenal di Jogja karena di museum ini memiliki nilai cerita yang cukup panjang dan masih bertahan hingga saat ini. <a href=\"https://www.alodiatour.com/museum-benteng-vredeburg/\">Museum Benteng Vredeburg</a> mengoleksi berbagai macam karya seni, berbagai macam patung, dan berbagai macam senjata peninggalan Belanda.</p>\r\n\r\n<p>Museum Benteng Vredeburg didirikan pada tahun 1760 oleh Sri Sultan Hamengku Buwono I atas permintaan Belanda, saat itu Gubernur dari Direktur Pantai Utara Jawa dipimpin oleh kepemimpinan Nicolaas Harting. Tujuan dibangunnya Museum Benteng Vredeburg adalah untuk menjaga keamanan Keraton dan sekitarnya, tetapi adanya maksud lain yang sebenarnya adalah untuk memudahkan dan mengontrol perkembangan yang terjadi di dalam Keraton. Awal dibangun Museum Benteng Vredeburg masih dalam keadaan yang sangat sederhana, bangunan tembok yang digunakan untuk membangun museum tersebut terbuat dari tanah yang diperkuat dengan tiang-tiang penyangga dari kayu pohon kelapa dan aren. Bangunan di dalamnya terbuat dari kayu dan bambu dengan atap hanya ilalang, bentuk bangunan yaitu bujur sangkar, dikeempat sudutnya dibuat tempat penjagaan yang disebut seleka/bastion. Oleh Sultan keempat sudut tersebut diberi nama Jaya Wisesa (sudut barat laut), Purusa (sudut timur laut), Jaya Prakosaningprang (sudut barat daya), dan sudut terakhir yaitu Jaya Prayitna (sudut tenggara).</p>\r\n\r\n<p>Pada masa selanjutnya yang dipimpin oleh W.H van Ossenberg mengusulkan agar benteng dibangun secara tetap suapa terjamin keamananya. Kemudian pada tahun 1767, mulailah pembangunan benteng dibawah pengawasan seorang ahli ilmu bangunan dari Belanda yang bernama Ir. Frans Haak dan pembangunan selesai pada tahun 1787. Setelah selesainya pembangunan Benteng yang diberi nama &ldquo;Rustenberg&rdquo; yang artinya benteng peristirahatan. Pada tahun ke 1967 di Yogyakarta terjadi bencana alam gempa bumi yang sangat dahsyat sehingga menjadikan sebagian benteng tersebut menjadi rusak parah. Akhirnya benteng tersebut diperbaiki dan diubah namanya menjadi &ldquo;Vredeburg&rdquo; yang artinya benteng perdamaian, agar hubungan antara Belanda dan Keraton tidak saling menyerang.</p>\r\n\r\n<p>Banyak koleksi yang ada di Museum Benteng Vredeburg diantaranya adalah koleksi bangunannya. Selokan/parit ang dibuat mengelilingi benteng yang berarti sebagai rintangan luar terhadap serangan musuh yang terus berlanjut pada perkembangan karena sistem militer sudah mengalami kemajuan yang digunakan sebagai sarana drainase/pembuangan saja. Di Museum Benteng Vredeburg dulu terdapat jembatan angkat (gantung), tetapi karena berkembangnya teknologi khususnya kendaraan perang akhirnya diganti dengan jembatan yang paten. Adanya Tembok benteng yang dibuat mengelilingi benteng yang digunakan untuk tempat pertahanan, pengintaian, dan sebagai tempat menaruh meriam-meriam kecil maupun senjata tangan. Dan ada juga koleksi bangunan lainnya seperti pintu gerbang sebagai sarana keluar masuk komplek benteng.</p>\r\n\r\n<p>Koleksi yang kedua yaitu koleksi Realia yang merupakan benda material yang nyata dan dulunya digunakan langsung pada peristiwa sejarah, seperti alat rumah tangga, senjata, naskah, pakaian, peralatan dapur, dan lain-lain. Koleksi yang ketiga adalah Koleksi foto, miniatur, replika, lukisan, dan benda hasil visualisasi lainnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Jl. Margo Mulyo No.6, Ngupasan, Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta.</p>', 7, 10000, 80, 1),
(36, 'Masjid Gedhe Kauman', '<p>Masjid Gedhe Kauman Yogyakarta, yang dibangun oleh Sri Sultan Hamengku Buwono I pada 29 Mei 1773, merupakan simbol harmonisasi sisi kebudayaan khas Kerajaan Yogyakarta yang sarat perjalanan sejarah dengan religiusitas masyarakatnya.</p>\r\n\r\n<p>Selain sebagai sarana beribadah bagi keluarga raja dan rakyatnya, masjid yang juga dikenal sebagai Masjid Raya Daerah Istimewa Yogyakarta tersebut dibangun sebagai kelengkapan Kerajaan Islam Ngayogyakarta Hadiningrat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Jl. Kauman Alun-alun Keraton Yogyakarta. Yogyakarta</p>', 8, 2000, 70, 1),
(37, 'Makam Imogiri (makam para raja mataram)', '<p><em>Pasarean Imogiri</em> dibangun pada tahun 1632, pada masa pemerintahan Sultan Agung Hanyakrakusuma (1613-1645). Pembangunan kompleks makam dipimpin oleh Kiai Tumenggung Citrokusumo, arsitekturnya merupakan perpaduan antara Hindu dan Islam. Bata merah yang mendominasi area makam bagian atas merupakan ciri utama arsitektur Islam Jawa atau arsitektur Islam Hindu pada abad ke-17.&nbsp;</p>\r\n\r\n<p>Batu bata yang menyusun bangunan Pasarean Imogiri tidak direkatkan menggunakan <em>spesi</em> khusus seperti semen. Diduga batu-batu bata tersebut disusun dengan metode <em>kosod</em>. Permukaan bata yang satu digosokkan dengan permukaan bata yang lain dengan diberi sedikit air hingga keluar semacam cairan pekat. Cairan pekat inilah yang kemudian melekatkan satu bata dengan bata lainnya. Metode ini dimungkinkan karena adanya campuran khusus pada bata masa itu yang tidak lagi terdapat pada bata masa kini.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Desa Girirejo dan Desa Wukirsari, Kecamatan Imogiri, Kabupaten Bantul, Daerah Istimewa Yogyakarta.</p>', 9, 4000, 37, 1),
(38, 'Kebun Buah Mangunan', '<p>Berada di ketinggian kurang lebih 200 mdpl, membuat tempat ini pun dijuluki sebagai negeri diatas awan. Dengan pemandangan kabut yang terbentuk tepat di depan mata, keindahannya memang luar biasa. Bisa dikatakan tempat wisata ini satu tipe dengan <a href=\"https://www.nativeindonesia.com/kalibiru-jogja/\">Kalibiru</a>.</p>\r\n\r\n<p>Disertai dengan pemandangan gunung yang tampak terlihat bersama dengan matahari, secara perlahan mulai menampakkan sinarnya dengan warna emasnya yang menggemaskan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Desa Mangunan, Kecamatan Dlingo, Kabupaten Bantul, Yogyakarta</p>', 11, 5000, 120, 1),
(39, 'Kebun Teh Nglinggo', '<p>Sejarah Desa Wisata Nglingo tak bisa dipisahkan dari kisah kepahlawanan Pangeran Diponegoro ketika perang melawan Belanda bersama pasukannya di Perbukitan Menoreh. Menurut cerita turun temurun yang dipercaya masyarakat setempat, dahulu ada tiga orang prajurit pengikut Pangeran Diponegoro yang menyusun strategi tak jauh dari kawasan Desa Nglinggo. Tiga prajurit tersebut adalah Ki Linggo Manik, Ki Dalem Tanu, dan Ki Gagak Roban. Untuk mengenang para prajurit tersebut, akhirnya nama Ki Linggo Manik yang dianggap sebagai pemimpin, diabadikan menjadi nama sebuah desa yang kini telah menjelma menjadi kawasan wisata dengan pemandangan menawan. Salah satu pemandangan itu bisa kita saksikan di kawasan kebun teh, di ujung barat pedukuhan Nglinggo yang kemudian lebih populer disebut Kebun Teh Nglinggo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jam Buka Kebun Teh Nglinggo</strong><br />\r\nSenin - Minggu: pukul 07.00 - 17.00 WIB</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Desa Wisata Nglinggo, Kulon Progo, Yogyakarta</p>', 11, 5000, 17, 1),
(40, 'Pasar Beringharjo', '<p>Jogja adalah surga belanja, apa lagi jika bukan fashion, kuliner, dan lainnya. Tentunya, fashion yang terkenal adalah kain legendaris, yaitu batik. Memang, batik banyak dijual di berbagai toko di Jogja, namun ada satu yang paling legendaris. Yaitu <strong>Pasar Beringharjo</strong>, yang lokasinya berada tidak jauh dari Malioboro.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pasar Beringharjo sendiri menjadi ikon belanja di Kota Jogja, yang menyediakan berbagai kebutuhan. Tak lengkap rasanya jika berbelanja tanpa mengunjungi pasar ini. Selain itu, Pasar Beringharjo pun tidak lepas dari sejarah Kota Jogja. Yang pada masa lalu berperan besar bagi perekonomian kota ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jam Buka: </strong>08.30 - 21.00<strong> </strong></p>\r\n\r\n<p><strong>Lokasi :</strong></p>\r\n\r\n<p>Jl. Margo Mulyo No.16, Ngupasan,Gondomanan,Yogyakarta,DI Yogyakarta,Indonesia,55122.</p>', 12, 2000, 80, 1),
(41, 'Air Terjun Grojogan Sewu', '<p>Air Terjun yang satu ini cukup unik. Namanya tidak hanya dipakai di satu tempat saja. Beberapa daerah pun memakai nama ini untuk air terjun mereka. Entah mengapa nama ini sering digunakan. Tetapi, satu hal yang pasti nama Grojogan Sewu mempunyai panorama yang mengundang decak kagum di setiap wilayahnya.</p>\r\n\r\n<p>Seperti nama Grojogan Sewu yang dimiliki oleh Karanganyar. Terletak di bawah kaki Gunung Lawu, air terjun yang mempunyai ketinggian sekitar 81 meter ini memiliki panorama yang tidak akan tertandingi oleh mana pun.</p>', 6, 20000, 80, 1),
(42, 'Pemandian Air Panas', '<p><strong>Pemandian Air Panas Guci</strong> adalah destinasi wisata paling populer di kabupaten Tegal. Letaknya berada di kaki Gunung Slamet. Kawasan Wisata Guci ini menyediakan air hangat alami dari perut bumi serta udara sejuk pegunungan.</p>\r\n\r\n<p>Berada di ketinggian 1300 dpl. Sumber air panas dari gunung api ini dipercaya memiliki banyak khasiat untuk kesehatan. Oleh sebab itu kawasan wisata ini selalu ramai dikunjungi wisatawan daerah sekitar Tegal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jam Buka: </strong>06.00 - 20.00<strong> </strong></p>\r\n\r\n<p>Lokasi<strong> </strong></p>\r\n\r\n<p>Jl. Objek Wisata Guci, Kalengan, Guci,Bumijawa,Tegal,Jawa Tengah,Indonesia,52466.</p>', 6, 8500, 10, 1),
(43, 'Pulau Dutungan', '<p><strong>Pulau Dutungan</strong> merupakan destinasi wisata yang berada di kabupaten Baruu, Sulawesi Selatan. Pulau ini memiliki keindahan pasir putih dengan pesona bawah laut yang sangat indah. Banyaknya pepohonan rindang tumbuh di tepi pantai membuat hawanya cukup sejuk.</p>\r\n\r\n<p>Terdapat banyak&nbsp;<em>resort</em> yang dapat dipilih untuk menginap pulau ini. beragam aktivitas wisata pun dapat dilakukan pada destinasi wisata ini. Terutama aktivitas wisata laut dan pantai.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jam Buka: </strong>24 Jam<strong> </strong></p>\r\n\r\n<p>Lokasi :</p>\r\n\r\n<p>Cilellang,Mallusetasi,Barru,Sulawesi Selatan,Indonesia,90753.</p>', 6, 50000, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base64`
--

CREATE TABLE `base64` (
  `base64_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base64`
--

INSERT INTO `base64` (`base64_id`, `barang_id`, `nama`) VALUES
(1, 20, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL29wcG8uanBlZw=='),
(2, 21, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL3NpcndhbGpvZ2dlci5qcGVn'),
(3, 22, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL2Rvd25sb2FkICgyKS5qcGVn'),
(4, 23, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL2Rvd25sb2FkLmpwZWc='),
(5, 24, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL2NlbGFuYV9wcmlhX1RSS18xOF83Ny5qcGc='),
(6, 25, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlLzI5MDk2MTM0XzE0MjgxNjkxODA2MjcwODJfMzk4NzIwMjM2NDkwOTAyNzMyOF9uLmpwZw=='),
(7, 26, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL2Rvd25sb2FkICgxKS5qcGVn'),
(8, 27, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlL2Rvd25sb2FkICgzKS5qcGVn'),
(9, 28, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlLzI4NzYyOTk2XzE1ODM5OTQ0NjgzMDIzODBfMTY0Njg5MDQwMDYwMzk2MzM5Ml9uLmpwZw=='),
(10, 29, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlLzE3NTk2MTE2Xzk5Mjk1NDgxNDE3NTE3M183MzcxMjA1Nzg3NDYyNDAyMDQ4X24uanBn'),
(11, 30, 'aHR0cDovL2xvY2FsaG9zdC9hZG1pbi1vbHNob3AvcHVibGljL2ltYWdlLzI5MDkzNTY3XzU2NzMwNDA1Njk3Njk2M184ODg1NDgwODQzNjQ1MDI2MzA0X24uanBn'),
(12, 31, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL21lZGl1bV9icm9tb19tYXVsaWQuanBn'),
(13, 32, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL1BhbnRhaS1QYXJhbmd0cml0aXMtMi0zMDB4MjAwLndlYnA='),
(14, 33, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL3dpc2F0YS1rYWxpYmlydS1rdWxvbnByb2dvLWpvZ2phLTItMzAweDIwMC5wbmc='),
(15, 34, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL21vbmphbGkucG5n'),
(16, 35, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL211c2V1bS1iZW50ZW5nLXZyZWRlYnVyZy00NTF4MjU3LnBuZw=='),
(17, 36, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL01hc2ppZC1HZWRlLUthdW1hbi1kZXBhbi5wbmc='),
(18, 37, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2ltb2dpcmktMDIucG5n'),
(19, 38, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2tlYnVuYnVhaG1hbmd1bmFuLnBuZw=='),
(20, 39, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2tlYnVudGVobWxvbmdvLnBuZw=='),
(21, 40, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL3Bhc2FyYmVyb25naGFyam8ucG5n'),
(22, 41, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2Fpci10ZXJqdW4tZ3Jvam9nYW4tc2V3dS10YXdhbmdtYW5ndS5qcGc='),
(23, 42, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL1dpc2F0YS1BaXItUGFuYXMtR3VjaS1UZWdhbC13aXNhdGFhaXJwYW5hc2d1Y2l0ZWdhbC1lMTU1NzI5NjYzNDE0MC02NDB4NDAwLnBuZw=='),
(24, 43, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL1B1bGF1LUR1dHVuZ2FuLUJhcnJ1LVN1bGF3ZXNpLVNlbGF0YW4tZGlsaWhhdC1kYXJpLWtlamF1aGFuLXBhcml3aXNhdGFfYmFycnUtZTE1OTU0MDY1NjEyMTktNjQweDM2MC5wbmc='),
(25, 44, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL29sc2hvcC9vbHNob3AvcHVibGljL2ltYWdlL0NpdHJhbGFuZC1XYXRlcnBhcmstTWFuYWRvLU1hbmFkby1TdWxhd2VzaS1TZWxhdGFuLUplc3NpY2EtQW5kYXJpYS1lMTU5NTQwNDYyMjk4NC02NDB4NDgwLmpwZw==');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama`) VALUES
(5, 'hijab'),
(6, 'Alam'),
(7, 'Pendidikan'),
(8, 'Sejarah'),
(9, 'Religi'),
(10, 'Cagar Alam'),
(11, 'Pertanian'),
(12, 'Oleh-oleh'),
(13, 'Bahari'),
(14, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `konfirmasi_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`konfirmasi_id`, `users_id`, `pesanan_id`, `photo`) VALUES
(1, 1, 2, 'aHR0cDovL2xvY2FsaG9zdC9vbHNob3AvcHVibGljL2ltYWdlL3lhc21pbmZiLmpwZw=='),
(2, 1, 2, 'aHR0cDovL2xvY2FsaG9zdC9vbHNob3AvcHVibGljL2ltYWdlLzI5NDE2ODY2XzIwNDI0MTg4NTYwNzk5MjlfODEzMTQ1NjQ3NTM1MzU3OTUyMF9uLmpwZw=='),
(3, 1, 3, 'aHR0cDovL2xvY2FsaG9zdC9vbHNob3AvcHVibGljL2ltYWdlL3lhc21pbjIuanBlZw=='),
(4, 1, 1, 'aHR0cDovL2xvY2FsaG9zdC9vbHNob3AvcHVibGljL2ltYWdlL2Rvd25sb2FkLmpwZWc='),
(5, 1, 4, 'aHR0cDovL2xvY2FsaG9zdC9vbHNob3AvcHVibGljL2ltYWdlL3lhc21pbmZiMi5qcGVn'),
(6, 1, 7, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL19NR182NjIwLkpQRw=='),
(7, 2, 8, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlLzQ5NGE3YTlkLTE4OWMtNGRiYS1iZGM0LTkxMjdlNzFlODliMC5qcGc='),
(8, 2, 9, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2x1ZmZ5LmpwZw=='),
(9, 2, 12, 'aHR0cDovL2xvY2FsaG9zdDo4MDAwL2ltYWdlL2x1ZmZ5LmpwZw==');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `total_bayar` decimal(10,2) NOT NULL,
  `status_invoice_id` int(11) NOT NULL DEFAULT 1,
  `tanggal` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `users_id`, `nama_penerima`, `alamat`, `total_bayar`, `status_invoice_id`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fadly', 'kp. pedurenan bekasi', '85000.00', 3, NULL, '2020-07-21 13:36:33', '2020-07-23 13:40:06'),
(2, 1, 'Pida', 'Kp. Sawah Bekasi', '170000.00', 3, NULL, '2020-07-20 13:36:53', '2020-07-23 13:40:19'),
(3, 2, 'edogawa', 'pwd', '10000.00', 1, NULL, '2020-07-23 13:45:55', '2020-07-23 13:45:55'),
(4, 1, 'Shafa', 'Kp. Sawah', '45000.00', 4, NULL, '2020-07-19 13:37:34', '2020-07-23 13:40:30'),
(5, 1, 'edo', 'purwodadi', '257000.00', 1, NULL, '2020-07-18 13:37:49', '2020-07-22 13:40:40'),
(6, 1, 'edo', 'purwodadi', '170000.00', 1, NULL, '2020-07-14 13:38:04', '2020-07-23 13:40:51'),
(7, 1, 'edogawa', 'purwodadi', '85000.00', 3, NULL, '2020-07-17 13:38:18', '2020-07-23 13:41:01'),
(8, 2, 'edogawa', 'purwodadi', '170000.00', 3, NULL, '2020-07-13 13:38:46', '2020-07-23 13:41:11'),
(9, 2, 'edogawa', 'purwodadi', '40000.00', 3, NULL, '2020-07-22 13:33:47', '2020-07-22 13:33:47'),
(10, 2, 'edogawa', 'pwd', '2000.00', 1, NULL, '2020-07-23 04:13:14', '2020-07-23 04:13:14'),
(11, 2, 'edogawa', 'pwd', '20000.00', 1, NULL, '2020-07-23 04:15:05', '2020-07-23 04:15:05'),
(12, 2, 'edogawa', 'pwd', '10000.00', 2, NULL, '2020-07-23 04:16:54', '2020-07-23 04:25:50'),
(13, 2, 'edogawa', 'purwodadi', '10000.00', 1, NULL, '2020-07-23 11:20:06', '2020-07-23 11:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_barang`
--

CREATE TABLE `pesanan_barang` (
  `pesanan_barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_barang`
--

INSERT INTO `pesanan_barang` (`pesanan_barang_id`, `pesanan_id`, `barang_id`, `qty`, `subtotal`) VALUES
(1, 1, 21, 1, '85000.00'),
(2, 2, 21, 2, '170000.00'),
(3, 3, 23, 1, '56000.00'),
(4, 3, 28, 1, '23000.00'),
(5, 4, 30, 1, '45000.00'),
(6, 5, 28, 1, '23000.00'),
(7, 5, 27, 1, '234000.00'),
(8, 6, 21, 2, '170000.00'),
(9, 7, 21, 1, '85000.00'),
(10, 8, 21, 2, '170000.00'),
(11, 9, 31, 2, '40000.00'),
(12, 10, 40, 1, '2000.00'),
(13, 11, 31, 1, '20000.00'),
(14, 12, 34, 1, '10000.00'),
(15, 13, 38, 2, '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `barang_id`, `nama`) VALUES
(1, 13, 'sirwaljogger.jpeg'),
(2, 14, 'sirwaljogger.jpeg'),
(3, 15, 'levis.jpeg'),
(4, 16, 'jogger.jpeg'),
(5, 17, 'levis-wanita.jpeg'),
(6, 18, 'levis.jpeg'),
(8, 20, 'oppo.jpeg'),
(19, 31, 'medium_bromo_maulid.jpg'),
(20, 32, 'Pantai-Parangtritis-2-300x200.webp'),
(21, 33, 'wisata-kalibiru-kulonprogo-jogja-2-300x200.png'),
(22, 31, 'medium_bromo_maulid.jpg'),
(23, 34, 'monjali.png'),
(24, 35, 'museum-benteng-vredeburg-451x257.png'),
(25, 36, 'Masjid-Gede-Kauman-depan.png'),
(26, 37, 'imogiri-02.png'),
(27, 36, 'Masjid-Gede-Kauman-depan.png'),
(28, 38, 'kebunbuahmangunan.png'),
(29, 39, 'kebuntehmlongo.png'),
(30, 40, 'pasarberongharjo.png'),
(31, 41, 'air-terjun-grojogan-sewu-tawangmangu.jpg'),
(32, 42, 'Wisata-Air-Panas-Guci-Tegal-wisataairpanasgucitegal-e1557296634140-640x400.png'),
(33, 42, 'Wisata-Air-Panas-Guci-Tegal-wisataairpanasgucitegal-e1557296634140-640x400.png'),
(34, 43, 'Pulau-Dutungan-Barru-Sulawesi-Selatan-dilihat-dari-kejauhan-pariwisata_barru-e1595406561219-640x360.png');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `nama`) VALUES
(1, 'Ditampilkan'),
(2, 'Disembunyikan');

-- --------------------------------------------------------

--
-- Table structure for table `status_invoice`
--

CREATE TABLE `status_invoice` (
  `status_invoice_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_invoice`
--

INSERT INTO `status_invoice` (`status_invoice_id`, `nama`) VALUES
(1, 'Belum Dibayar'),
(2, 'Menunggu Verifikasi'),
(3, 'Dibayar'),
(4, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `name`, `email`, `password`, `remember_token`) VALUES
(1, 'reza', 'fadly@fadly.com', '$2y$10$FJR2WLtTtlB329Wl72eoieqlwLBmP2MSptrOG2uB0YxSB/NzH302y', 'hLSNgpW7Oay95wBg5gNky9O1ABAOxXmxYmcYqf1YiNAnAM7otBggPPa11re6'),
(2, 'edogawa', 'kurniaedo7@gmail.com', '$2y$10$VmzTmZQBXXzayA0Tkn2j.e1iWB/Y.IY7w2BgnsdZKiSi2EsfJ0.a2', NULL),
(3, 'adegawa', 'kurniaade7@gmail.com', '$2y$10$NE2vgGIn67MQ89u9tZZ.eeWA2vDh0UsKXy9e6YC7aLTHFsjhliM7O', 'gcB4ENiFTWiBjF0sFTf793nzioNGHmMleXiS1ZSqMUaoSYl4aETbQi0Ns0d0'),
(4, 'dimas', 'dimas@gmail.com', '$2y$10$yylUhUdZMXf/nr2oF8vZV.TH28MDHBvphU91l0RjBdhvUitteynnK', 'lCuvMVlQtaJFmMiKxKw5R9QcvOqcFVZUYX4TVgabqb3q8ldaVm9N2o4fmW4u'),
(5, 'maruf', 'maruf@gmail.com', '$2y$10$83otT91Ke1edJ/I81s73Q.B8s4RzHMYjGSgBo1NnGsUKeKXGI0DM.', 'fffrNXyhM68wCdKu26wPDoOEmf6Yf8jKFeKeQOEJlvtPLEAIIOZMQPjWQj0C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_id` (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `base64`
--
ALTER TABLE `base64`
  ADD PRIMARY KEY (`base64_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`konfirmasi_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`);

--
-- Indexes for table `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  ADD PRIMARY KEY (`pesanan_barang_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `status_invoice`
--
ALTER TABLE `status_invoice`
  ADD PRIMARY KEY (`status_invoice_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `base64`
--
ALTER TABLE `base64`
  MODIFY `base64_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `konfirmasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  MODIFY `pesanan_barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_invoice`
--
ALTER TABLE `status_invoice`
  MODIFY `status_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
