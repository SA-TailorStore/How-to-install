-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2025 at 12:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kanok-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `DESIGNS`
--

CREATE TABLE `DESIGNS` (
  `design_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `design_url` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DESIGNS`
--

INSERT INTO `DESIGNS` (`design_id`, `type`, `design_url`, `timestamp`, `is_delete`) VALUES
(1, 'เสื้อ', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637631/pqich4yvpmatep77roqn.jpg', '2024-10-11 09:07:12', 0),
(2, 'เสื้อ', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637642/dhlhdxprnavmjzto4049.jpg', '2024-10-11 09:07:22', 0),
(3, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637653/qb1hymvlanf3dgxi28sy.jpg', '2024-10-11 09:07:33', 0),
(4, 'เสื้อ', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637699/n5lrmhcfvaflzfpevms0.jpg', '2024-10-11 09:08:21', 0),
(5, 'กระโปรง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637714/aaq3gab9oeyrptpwcqsc.jpg', '2024-10-11 09:08:35', 1),
(7, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730050792/fqa46wnmfzyo7kes3fuj.jpg', '2024-10-27 17:39:52', 1),
(8, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730126089/o070dpk0nwactodx6icy.jpg', '2024-10-28 14:34:50', 1),
(9, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730126572/rhtb5hzvwiwyqex5oqgf.jpg', '2024-10-28 14:42:55', 1),
(10, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730126858/agmq9tzdskhxwyhppitk.jpg', '2024-10-28 14:47:39', 1),
(11, 'กางเกง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730282014/ft3n5alfreml4rjb5haf.jpg', '2024-10-30 09:53:34', 1),
(12, 'กระโปรง', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730319689/ihqoen0dbookdsicffia.jpg', '2024-10-30 20:21:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `FABRICS`
--

CREATE TABLE `FABRICS` (
  `fabric_id` int(11) NOT NULL,
  `fabric_url` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FABRICS`
--

INSERT INTO `FABRICS` (`fabric_id`, `fabric_url`, `quantity`, `timestamp`, `is_delete`) VALUES
(1, 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637799/eouqeudmbskorlcztv4h.png', 1488, '2024-10-11 09:10:00', 0),
(2, 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637816/i4gee13xp6opm3eccydy.png', 1490, '2024-10-11 09:10:17', 0),
(3, 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637831/nmmud04eswg2rwpnelh7.png', 1462, '2024-10-11 09:10:31', 0),
(4, 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1728637850/z1msjzin6uqfqcbqxb9b.png', 1488, '2024-10-11 09:10:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `MATERIALS`
--

CREATE TABLE `MATERIALS` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MATERIALS`
--

INSERT INTO `MATERIALS` (`material_id`, `material_name`, `amount`, `timestamp`) VALUES
(20, 'กระดาษ', 6, '2024-10-30 18:45:50'),
(21, 'ด้ายเย็บ', 6, '2024-10-30 18:47:09'),
(22, 'เข็ม', 6, '2024-10-30 18:47:27'),
(24, 'ผ้าวกาว', 6, '2024-10-30 18:47:47'),
(25, 'ซิบ', 6, '2024-10-30 18:47:54'),
(26, 'กระดุม', 6, '2024-10-30 18:48:03'),
(27, 'ชอล์ก', 10, '2024-10-30 19:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `ORDERS`
--

CREATE TABLE `ORDERS` (
  `order_id` varchar(20) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `is_payment` tinyint(1) DEFAULT 0,
  `store_phone` varchar(20) NOT NULL,
  `store_address` text NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_address` text NOT NULL,
  `price` float DEFAULT 0,
  `due_date` datetime DEFAULT current_timestamp(),
  `tracking_number` varchar(100) DEFAULT '-',
  `tailor_id` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `tailor_phone` varchar(20) DEFAULT NULL,
  `tailor_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ORDERS`
--

INSERT INTO `ORDERS` (`order_id`, `status`, `is_payment`, `store_phone`, `store_address`, `user_phone`, `user_address`, `price`, `due_date`, `tracking_number`, `tailor_id`, `created_by`, `timestamp`, `tailor_phone`, `tailor_address`) VALUES
('O20250125180016', 'success_user', 1, '0914198877', 'นพโป๊ะ เก่งมาก|123/45 ซอยสุขสบาย ถนนสุขใจ แขวงบางกอกน้อย เขตบางกอกน้อย|กรุงเทพมหานคร 10700\nประเทศไทย', '0914298877', 'ภูมิระพี เสริญวณิชกุล|บ้านเลขที่ 123/45 หมู่ที่ 5\nถนนสุขใจ ซอย 7\nแขวงทุ่งมหาเมฆ เขตสาทร|กรุงเทพมหานคร 10120', 1000, '2025-02-01 11:01:00', 'Best Express|hh12345678', '01928bce-b629-7f6f-8019-eac87ad99665', '01927ac7-4b8f-7763-9086-3427be9252a6', '2025-01-25 11:00:16', '0123456789', 'มาลาหมิง กิงก่องแก้ว|เลขที่ 99/12 หมู่บ้านสุขสบาย\nซอยเพชรเกษม 48 ถนนเพชรเกษม\nแขวงบางหว้า เขตภาษีเจริญ|กรุงเทพมหานคร ๅ');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCTS`
--

CREATE TABLE `PRODUCTS` (
  `product_id` varchar(255) NOT NULL,
  `design_id` int(11) DEFAULT NULL,
  `fabric_id` int(11) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `size` varchar(10) NOT NULL,
  `process_quantity` int(11) DEFAULT 0,
  `total_quantity` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PRODUCTS`
--

INSERT INTO `PRODUCTS` (`product_id`, `design_id`, `fabric_id`, `detail`, `size`, `process_quantity`, `total_quantity`, `created_by`, `timestamp`) VALUES
('P202501251800161', 1, 2, '', 'L', 10, 10, 'O20250125180016', '2025-01-25 11:00:16'),
('P202501251800162', 12, 3, '', 'L', 10, 10, 'O20250125180016', '2025-01-25 11:00:16'),
('P202501251800163', 3, 3, '', 'L', 10, 10, 'O20250125180016', '2025-01-25 11:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `user_id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `display_name` varchar(255) DEFAULT '-',
  `user_profile_url` varchar(255) DEFAULT '-',
  `role` varchar(10) DEFAULT 'user',
  `phone_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`user_id`, `username`, `password`, `display_name`, `user_profile_url`, `role`, `phone_number`, `address`, `timestamp`) VALUES
('01927ac7-4b8f-7763-9086-3427be9252a6', 'user', '$2a$10$NQaVwT0UFRdA6FucKrJSb.47SeenR1YphDC6iD8C1sFitiPaNQXNW', 'ภูมิระพี เสริญวณิชกุล', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730157173/dfoa0xnhcenvhec2vyud.jpg', 'user', '0914298877', 'บ้านเลขที่ 123/45 หมู่ที่ 5\nถนนสุขใจ ซอย 7\nแขวงทุ่งมหาเมฆ เขตสาทร|กรุงเทพมหานคร 10120', '2024-10-11 08:52:14'),
('01927ad0-44c0-74f8-ade4-963b6fc150f2', 'shop', '$2a$10$ttRrOYrYLI1GjxuF1W7cbecMY8B0nkYrCTPSC5uiJVLNICKvM5lIS', 'นพโป๊ะ เก่งมาก', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730135239/fdhl39ftctuh166rsyoa.jpg', 'store', '0914198877', '123/45 ซอยสุขสบาย ถนนสุขใจ แขวงบางกอกน้อย เขตบางกอกน้อย|กรุงเทพมหานคร 10700\nประเทศไทย', '2024-10-11 09:02:02'),
('01928bce-b629-7f6f-8019-eac87ad99665', 'tailor1', '$2a$10$V.v66Y2bOSU754K0TZoeMeJ/NE/d9S2LBuWI6DYbqnTGmARlfIABS', 'มาลาหมิง กิงก่องแก้ว', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730157918/mm5n3qq8aed4fj0iz4bq.jpg', 'tailor', '0123456789', 'เลขที่ 99/12 หมู่บ้านสุขสบาย\nซอยเพชรเกษม 48 ถนนเพชรเกษม\nแขวงบางหว้า เขตภาษีเจริญ|กรุงเทพมหานคร ๅ', '2024-10-14 16:13:53'),
('01928bce-c7a9-7f9f-bdcc-8eed729e4230', 'tailor2', '$2a$10$JMpBVrtXQfjcWouVmupY.ecn4Kbf9YhDeydoNenJoE0ZlQ9N8lWuG', 'แดง เลิศหรู', '-', 'tailor', '00000000', 'fgfgfgfgf|fgfgfgfgfgf', '2024-10-14 16:13:57'),
('01928bce-e2b4-7d6f-9052-18331743806e', 'tailor3', '$2a$10$TWXIP7Mm4/SzqIypGxqFBOY6r.iZhPtNrqTb5DJma8ZRdiDIiCi9m', 'สวัสดี หมีจ๋า', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:04'),
('01928bce-f572-72d6-9bb7-dc56e0b04e48', 'tailor4', '$2a$10$JSYGUu/Nr6DSuK031LNV9ezEH3BUT6xzbQyd1rox6lujildb.KCbu', 'หิวข้าว แล้วนะ', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:09'),
('01928bcf-037b-7a9b-8014-276c9d1b4e4d', 'tailor5', '$2a$10$3.dz8AgLjWMXirhs8Fg4Kuh0Ao6WP9FpFH6L6UCwVyFTP68mrmIC6', 'วันนี้ วันจันทร์', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:12'),
('01928bcf-0f23-71f8-9f07-aba3c2246ee9', 'tailor6', '$2a$10$Xc.v5Qq8leHaTUj5yJS64OsjJAoHi4jutnvWpUjVxy3mGLkSuxlZG', 'ประชา จันทร์โอชุด', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:15'),
('01928bcf-1e13-7da4-8b2f-6c1ba626710a', 'tailor7', '$2a$10$7XdXbokrI8VqIz18os8mHOxuf1yqXaKNmw./iD6aMWeAA8Bt6ltay', 'เมี๋ยว เมี๋ยว', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:19'),
('01928bcf-2e5c-776e-ae8b-4869e1df454f', 'tailor8', '$2a$10$bH8hjCyOxtFJ/1YvFeLl5OEl77qlY72UH3dPjxyNYe8jSpdtKzMgy', 'ไก่ จ๋าได้ยินไหมว่าเสียงใคร', '-', 'tailor', '00000000', '-', '2024-10-14 16:14:23'),
('0192d914-996e-7d99-a331-a3fe750f34d3', 'homie', '$2a$10$k2DfTBQ0qjoSxWUiyYDFQ.JylEzU8eTcbuEfqS3./J9y89SN38lK6', 'ภูมิระพี เสริญวณิชกุล', 'https://res.cloudinary.com/dp6k75ppw/image/upload/v1730219055/p7ublw0fshlgblrxqlbu.jpg', 'user', '0914298877', '5/139 หมู่ 6 ต.บ้านฉาง|อ.บ้านฉาง จ.ระยอง 21130', '2024-10-29 16:20:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DESIGNS`
--
ALTER TABLE `DESIGNS`
  ADD PRIMARY KEY (`design_id`);

--
-- Indexes for table `FABRICS`
--
ALTER TABLE `FABRICS`
  ADD PRIMARY KEY (`fabric_id`);

--
-- Indexes for table `MATERIALS`
--
ALTER TABLE `MATERIALS`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `tailor_id` (`tailor_id`);

--
-- Indexes for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `design_id` (`design_id`),
  ADD KEY `fabric_id` (`fabric_id`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DESIGNS`
--
ALTER TABLE `DESIGNS`
  MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `FABRICS`
--
ALTER TABLE `FABRICS`
  MODIFY `fabric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `MATERIALS`
--
ALTER TABLE `MATERIALS`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `USERS` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`tailor_id`) REFERENCES `USERS` (`user_id`);

--
-- Constraints for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `ORDERS` (`order_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`design_id`) REFERENCES `DESIGNS` (`design_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`fabric_id`) REFERENCES `FABRICS` (`fabric_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
