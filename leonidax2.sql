-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Nis 2023, 23:50:25
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `leonidax2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ban`
--

CREATE TABLE `ban` (
  `ban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sh_duyuru`
--

CREATE TABLE `sh_duyuru` (
  `id` int(11) NOT NULL,
  `d_icerik` varchar(255) NOT NULL,
  `d_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sh_duyuru`
--

INSERT INTO `sh_duyuru` (`id`, `d_icerik`, `d_time`) VALUES
(20, 'Tüm sorgular aktiftir, sadece adres sorgu ve vesikalar bakımdadır. İyi kullanımlar.', '10.02.2023');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `k_rol` enum('0','1','2') NOT NULL DEFAULT '0',
  `k_log` varchar(32) NOT NULL,
  `u_time` varchar(32) NOT NULL,
  `k_browser` varchar(32) NOT NULL,
  `k_os` varchar(32) NOT NULL,
  `k_time` varchar(32) NOT NULL,
  `k_key` varchar(255) NOT NULL,
  `k_verified` varchar(255) NOT NULL,
  `k_adi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `k_rol`, `k_log`, `u_time`, `k_browser`, `k_os`, `k_time`, `k_key`, `k_verified`, `k_adi`) VALUES
(31, '1', '::1', '1', 'Google Chrome', 'Windows 10', '0571-04-20 24:00:00', 'Xykallah', 'true', 'Xyka');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `sh_duyuru`
--
ALTER TABLE `sh_duyuru`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `sh_duyuru`
--
ALTER TABLE `sh_duyuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
