-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2020 lúc 05:32 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `iphone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_product`, `quantity`) VALUES
(8, 6, 8, 27),
(9, 6, 9, 1),
(10, 6, 10, 5),
(12, 4, 10, 3),
(13, 4, 8, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name_cus` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address_cus` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone_cus` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `note_cus` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name_cus`, `address_cus`, `phone_cus`, `note_cus`, `id_product`, `quantity`, `status`, `payment`) VALUES
(1, '123123', '12312', '1231231', '23123', 1, 1, 'check', 'after');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `detail` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `quantity`, `detail`, `category`) VALUES
(7, 'IPHONE XR', 1000000, 'public/fv6jGinW5rP43Qb2iNDOo9PjL0n6LUZuTO9VlsI2.jpeg', 100, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'phone'),
(8, 'IPHONE 11', 2000000, 'public/i5Pc1Vnw64RxkOZP13IhqqlbxABnecT0KA6Nbp9V.png', 50, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'phone'),
(9, 'IPHONE 11 Pro Max', 2500000, 'public/N1bYmwjHZGV31UfWHCThlpSu7OeZ3fu3TES81eww.jpeg', 200, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'phone'),
(10, 'IPHONE X', 3000000, 'public/PhTrDSLghkSU5iV3V7bIgGNnhKctO95HCjLQCsCq.png', 10, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'phone'),
(11, 'AirPods 2', 1000000, 'public/4KcHvW4g7KqadV5orrW7WF4phqdckZGNd9bYivvK.jpeg', 10, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'ipod'),
(12, 'Airpods 1', 500000, 'public/1dYe6p3tI7Jv6vmBkUxJMAlEhxCxuNQvp4wkQzo6.jpeg', 10, 'IPS LCD, 6.1, IPS LCD, 16 triệu màu//iOS 12//12 MP//7 MP//Apple A12 Bionic 6 nhân//3G//64 GB//Nano SIM, Hỗ trợ 4G//2942 mAh, có sạc nhanh', 'ipod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`) VALUES
(4, 'Trần Công Dũng', 'dungx', '$2y$10$Yj53VYUmHPAsB9ehmow.EuV3ThkUXSAI4Ps8na8R8iU.14tBfrNUG', 'user'),
(5, 'admin', 'admin', '$2y$10$iD5zDznDN/wEmKpx6l8itODAEnNLX.8Pze5Hm9oYfP6aQzAm1Ecxe', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
