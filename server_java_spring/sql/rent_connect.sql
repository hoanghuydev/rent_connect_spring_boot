-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 04:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_fees`
--

CREATE TABLE `additional_fees` (
                                   `fee_id` bigint(20) NOT NULL,
                                   `fee_name` varchar(100) NOT NULL,
                                   `description` longtext DEFAULT NULL,
                                   `amount` decimal(38,2) NOT NULL,
                                   `unit` varchar(50) NOT NULL,
                                   `created_at` datetime DEFAULT current_timestamp(),
                                   `updated_at` datetime DEFAULT NULL,
                                   `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
                             `address_id` bigint(20) NOT NULL,
                             `user_id` bigint(20) DEFAULT NULL,
                             `address_type` enum('HOME','COMPANY','OTHER') NOT NULL,
                             `address_line` varchar(255) NOT NULL,
                             `province` varchar(100) NOT NULL,
                             `district` varchar(100) NOT NULL,
                             `ward` varchar(100) NOT NULL,
                             `specific_address` varchar(255) NOT NULL,
                             `address_label` varchar(100) DEFAULT NULL,
                             `is_default` tinyint(1) DEFAULT 0,
                             `created_at` datetime DEFAULT current_timestamp(),
                             `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
                             `amenity_id` bigint(20) NOT NULL,
                             `amenity_name` varchar(100) NOT NULL,
                             `icon` varchar(255) DEFAULT NULL,
                             `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`amenity_id`, `amenity_name`, `icon`, `deleted_at`) VALUES
                                                                                 (1, 'Bluetooth', 'bluetooth-b', NULL),
                                                                                 (2, 'Camera 360', 'video', NULL),
                                                                                 (3, 'Camera cập lề', 'camera', NULL),
                                                                                 (4, 'Camera hành trình', 'dashcube', NULL),
                                                                                 (5, 'Camera lùi', 'camera-retro', NULL),
                                                                                 (6, 'Cảm biến lốp', 'gear', NULL),
                                                                                 (7, 'Cảm biến va chạm', 'car-burst', NULL),
                                                                                 (8, 'Cảnh báo tốc độ', 'gauge', NULL),
                                                                                 (9, 'Cửa sổ trời', 'cloud', NULL),
                                                                                 (10, 'Định vị GPS', 'location-dot', NULL),
                                                                                 (11, 'Ghế trẻ em', 'couch', NULL),
                                                                                 (12, 'Khe cắm USB', 'usb', NULL),
                                                                                 (13, 'Lốp dự phòng', 'circle', NULL),
                                                                                 (14, 'ETC', NULL, NULL),
                                                                                 (15, 'Túi khí an toàn', 'bag-shopping', NULL),
                                                                                 (16, 'Sạc không dây', 'battery-full', NULL),
                                                                                 (17, 'Điều hòa tự động', 'snowflake', NULL),
                                                                                 (18, 'Hệ thống giải trí màn hình cảm ứng', 'tv', NULL),
                                                                                 (19, 'Kết nối Apple CarPlay/Android Auto', 'android', NULL),
                                                                                 (20, 'Gương chiếu hậu chống chói', 'sun', NULL),
                                                                                 (21, 'Ghế chỉnh điện', 'chair', NULL),
                                                                                 (22, 'Ghế sưởi/làm mát', NULL, NULL),
                                                                                 (23, 'Hệ thống lọc không khí', 'wind', NULL),
                                                                                 (24, 'Hệ thống âm thanh cao cấp', 'volume-high', NULL),
                                                                                 (25, 'Hệ thống điều khiển hành trình (Cruise Control)', 'gamepad', NULL),
                                                                                 (26, 'Hệ thống hỗ trợ giữ làn đường', NULL, NULL),
                                                                                 (27, 'Hệ thống hỗ trợ đỗ xe', NULL, NULL),
                                                                                 (28, 'Hệ thống cảnh báo điểm mù', NULL, NULL),
                                                                                 (29, 'Hệ thống điều chỉnh khoảng cách tự động', NULL, NULL),
                                                                                 (30, 'Hệ thống điều hòa 2 vùng độc lập', NULL, NULL),
                                                                                 (31, 'Hệ thống chống trượt', NULL, NULL),
                                                                                 (32, 'Gạt mưa tự động', NULL, NULL),
                                                                                 (33, 'Đèn pha tự động', NULL, NULL),
                                                                                 (34, 'Đèn LED chiếu sáng ban ngày', NULL, NULL),
                                                                                 (35, 'Hệ thống nhận diện biển báo giao thông', NULL, NULL),
                                                                                 (36, 'Khóa cửa tự động', NULL, NULL),
                                                                                 (37, 'Khóa trẻ em', NULL, NULL),
                                                                                 (38, 'Bệ tỳ tay trung tâm', NULL, NULL),
                                                                                 (39, 'Tựa đầu có thể điều chỉnh', NULL, NULL),
                                                                                 (40, 'Rèm che nắng', NULL, NULL),
                                                                                 (41, 'Hệ thống sưởi kính sau', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
                                   `history_id` bigint(20) NOT NULL,
                                   `rental_id` bigint(20) DEFAULT NULL,
                                   `status` enum('REQUESTED','APPROVED','REJECTED','COMPLETED','CANCELED') NOT NULL,
                                   `updated_at` datetime DEFAULT current_timestamp(),
                                   `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
                        `car_id` bigint(20) NOT NULL,
                        `owner_id` bigint(20) DEFAULT NULL,
                        `car_name` varchar(100) NOT NULL,
                        `description` longtext DEFAULT NULL,
                        `price_per_day` decimal(38,2) NOT NULL,
                        `times_rented` int(11) NOT NULL,
                        `transmission_id` bigint(20) DEFAULT NULL,
                        `seats` int(11) NOT NULL,
                        `fuel_id` bigint(20) DEFAULT NULL,
                        `range_per_charge_or_tank` varchar(50) DEFAULT NULL,
                        `location_id` bigint(20) DEFAULT NULL,
                        `created_at` datetime DEFAULT current_timestamp(),
                        `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `owner_id`, `car_name`, `description`, `price_per_day`, `times_rented`, `transmission_id`, `seats`, `fuel_id`, `range_per_charge_or_tank`, `location_id`, `created_at`, `deleted_at`) VALUES
    (2, 17, 'HONDA CIVIC G 2022', 'Honda Civic G xe số tự động đăng ký sản xuất 2022, xe gia đình đi mới đẹp, nội thất nguyên bản, sạch đẹp, xe bảo dưỡng thường xuyên, phù hợp cho gia đình du lịch, xe cảm biếng lùi, đèn pha tự động , camara hành trình.', 1100000.00, 0, 2, 5, 1, '100km', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_amenities`
--

CREATE TABLE `car_amenities` (
                                 `car_id` bigint(20) NOT NULL,
                                 `amenity_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_amenities`
--

INSERT INTO `car_amenities` (`car_id`, `amenity_id`) VALUES
                                                         (2, 1),
                                                         (2, 2),
                                                         (2, 3),
                                                         (2, 4),
                                                         (2, 8),
                                                         (2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `car_features`
--

CREATE TABLE `car_features` (
                                `feature_id` bigint(20) NOT NULL,
                                `feature_name` varchar(100) NOT NULL,
                                `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_feature_map`
--

CREATE TABLE `car_feature_map` (
                                   `car_id` bigint(20) NOT NULL,
                                   `feature_id` bigint(20) NOT NULL,
                                   `feature_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
                              `image_id` varchar(40) NOT NULL,
                              `car_id` bigint(20) DEFAULT NULL,
                              `image_url` varchar(255) NOT NULL,
                              `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`image_id`, `car_id`, `image_url`, `deleted_at`) VALUES
                                                                               ('hbma3siuxqvvmtgtldkd', 2, 'http://res.cloudinary.com/dwuypueso/image/upload/v1736585526/hbma3siuxqvvmtgtldkd.jpg', NULL),
                                                                               ('icwarin1pdcsu220pvbe', 2, 'http://res.cloudinary.com/dwuypueso/image/upload/v1736585530/icwarin1pdcsu220pvbe.jpg', NULL),
                                                                               ('ncebefazgxojhvug18uq', 2, 'http://res.cloudinary.com/dwuypueso/image/upload/v1736585533/ncebefazgxojhvug18uq.jpg', NULL),
                                                                               ('qg9i2ipwwb3rpuyglku8', 2, 'http://res.cloudinary.com/dwuypueso/image/upload/v1736585523/qg9i2ipwwb3rpuyglku8.jpg', NULL),
                                                                               ('vpiijii10tjh59zo3ich', 2, 'http://res.cloudinary.com/dwuypueso/image/upload/v1736585535/vpiijii10tjh59zo3ich.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_locations`
--

CREATE TABLE `car_locations` (
                                 `location_id` bigint(20) NOT NULL,
                                 `address_line` varchar(255) NOT NULL,
                                 `province` varchar(100) NOT NULL,
                                 `district` varchar(100) NOT NULL,
                                 `ward` varchar(100) NOT NULL,
                                 `latitude` decimal(38,2) DEFAULT NULL,
                                 `longitude` decimal(38,2) DEFAULT NULL,
                                 `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_locations`
--

INSERT INTO `car_locations` (`location_id`, `address_line`, `province`, `district`, `ward`, `latitude`, `longitude`, `deleted_at`) VALUES
    (1, '69 Đường 18', 'Hồ Chí Minh', 'Thủ Đức', 'Phường Linh Trung', 10.86, 106.79, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
                                 `conversation_id` bigint(20) NOT NULL,
                                 `created_at` datetime(6) NOT NULL,
                                 `deleted_at` datetime(6) DEFAULT NULL,
                                 `customer_id` bigint(20) NOT NULL,
                                 `owner_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
                         `fuel_id` bigint(20) NOT NULL,
                         `fuel_type` varchar(50) NOT NULL,
                         `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`fuel_id`, `fuel_type`, `deleted_at`) VALUES
                                                               (1, 'Xăng', NULL),
                                                               (2, 'Điện', NULL),
                                                               (3, 'Dầu Diesel', NULL),
                                                               (4, 'Hydrogen', NULL),
                                                               (5, 'Xăng/Điện', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
                            `message_id` bigint(20) NOT NULL,
                            `deleted_at` datetime(6) DEFAULT NULL,
                            `message_text` varchar(255) NOT NULL,
                            `sent_at` datetime(6) NOT NULL,
                            `conversation_id` bigint(20) NOT NULL,
                            `sender_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
                                    `otp_id` bigint(20) NOT NULL,
                                    `user_id` bigint(20) DEFAULT NULL,
                                    `otp_code` varchar(50) NOT NULL,
                                    `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_verification`
--

INSERT INTO `otp_verification` (`otp_id`, `user_id`, `otp_code`, `expires_at`) VALUES
    (1, 17, 'H/akPSYOjcPZB4vY1wbd9A==', '2024-12-26 22:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
                           `rental_id` bigint(20) NOT NULL,
                           `car_id` bigint(20) DEFAULT NULL,
                           `customer_id` bigint(20) DEFAULT NULL,
                           `owner_id` bigint(20) DEFAULT NULL,
                           `start_date` datetime NOT NULL,
                           `end_date` datetime NOT NULL,
                           `status` enum('REQUESTED','APPROVED','REJECTED','COMPLETED','CANCELED') DEFAULT 'REQUESTED',
                           `created_at` datetime DEFAULT current_timestamp(),
                           `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
                           `review_id` bigint(20) NOT NULL,
                           `car_id` bigint(20) DEFAULT NULL,
                           `customer_id` bigint(20) DEFAULT NULL,
                           `rating` int(11) NOT NULL,
                           `review_text` longtext DEFAULT NULL,
                           `created_at` datetime DEFAULT current_timestamp(),
                           `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
                         `role_id` bigint(20) NOT NULL,
                         `role_name` varchar(50) NOT NULL,
                         `description` varchar(500) NOT NULL,
                         `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                         `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                         `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
                                                                                                          (1, 'ADMIN', 'Manages the overall platform, including user accounts, financial transactions, and system settings. Has full control over the app\'s operations.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL),
(2, 'MODERATOR', 'Reviews user content (e.g., reviews or vehicle listings) to ensure compliance with platform guidelines.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL),
(3, 'SUPER_ADMIN', ' A higher-level administrator responsible for critical decisions, including data management, security policies, and overseeing other admins.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL),
(4, 'CUSTOMER', 'A user who books and rents cars through the app. They can search for available vehicles, make bookings, and provide feedback.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL),
(5, 'OWNER', 'A car owner who lists vehicles for rent on the platform. Responsible for maintaining the vehicle\'s condition and responding to customer requests.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL),
                                                                                                          (6, 'DRIVER', 'Provides driving services when customers opt for a driver along with the rented car. Ensures timely and safe transportation.', '2024-12-26 13:58:57', '2024-12-26 13:58:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
                         `term_id` bigint(20) NOT NULL,
                         `term_text` tinytext NOT NULL,
                         `created_at` datetime DEFAULT current_timestamp(),
                         `updated_at` datetime DEFAULT NULL,
                         `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transmissions`
--

CREATE TABLE `transmissions` (
                                 `transmission_id` bigint(20) NOT NULL,
                                 `transmission_type` varchar(50) NOT NULL,
                                 `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transmissions`
--

INSERT INTO `transmissions` (`transmission_id`, `transmission_type`, `deleted_at`) VALUES
                                                                                       (1, 'Số sàn', NULL),
                                                                                       (2, 'Số tự động', NULL),
                                                                                       (3, ' Ly hợp kép', NULL),
                                                                                       (4, 'Bán tự động', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `user_id` bigint(20) NOT NULL,
                         `full_name` varchar(100) NOT NULL,
                         `email` varchar(100) NOT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         `phone_number` varchar(15) DEFAULT NULL,
                         `created_at` datetime DEFAULT current_timestamp(),
                         `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                         `verified` tinyint(1) DEFAULT 0,
                         `login_platform` enum('EMAIL','GOOGLE','FACEBOOK','OTHER') NOT NULL,
                         `platform_id` varchar(255) DEFAULT NULL,
                         `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `phone_number`, `created_at`, `updated_at`, `verified`, `login_platform`, `platform_id`, `deleted_at`) VALUES
                                                                                                                                                                             (17, 'Trần Võ Hoàng Huy', '21130386st.hcmuaf.edu.vn', '$2a$10$vMtd9uQadcWtCvAXzwVCFeqJI8IsIu1IDO6xcsC7oJM/do1PzzD/K', '094694447', '2024-12-26 22:03:45', '2024-12-26 15:20:59', 1, 'EMAIL', NULL, NULL),
                                                                                                                                                                             (19, 'Super Admin', 'tranvohoanghuy12ab@gmail.com', '$2a$10$Z09tgWZdBpAYfIxIh5.c5eof.VM3l7Bb/ZfiiPXxTmF5yLC/p1GIu', NULL, '2024-12-27 19:37:03', '2024-12-27 12:37:03', 1, 'EMAIL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
                              `user_id` bigint(20) NOT NULL,
                              `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
                                                    (17, 4),
                                                    (17, 5),
                                                    (19, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_fees`
--
ALTER TABLE `additional_fees`
    ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
    ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
    ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
    ADD PRIMARY KEY (`history_id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
    ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `owner_id_2` (`owner_id`),
  ADD KEY `transmission_id` (`transmission_id`),
  ADD KEY `fuel_id` (`fuel_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `car_amenities`
--
ALTER TABLE `car_amenities`
    ADD PRIMARY KEY (`car_id`,`amenity_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `car_features`
--
ALTER TABLE `car_features`
    ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `car_feature_map`
--
ALTER TABLE `car_feature_map`
    ADD PRIMARY KEY (`car_id`,`feature_id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
    ADD PRIMARY KEY (`image_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_locations`
--
ALTER TABLE `car_locations`
    ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
    ADD PRIMARY KEY (`conversation_id`),
  ADD KEY `FKaim02rk3jmh6iu2532wid9ukn` (`customer_id`),
  ADD KEY `FK5lkkagycdth4e4wt3vi21v7c7` (`owner_id`);

--
-- Indexes for table `fuels`
--
ALTER TABLE `fuels`
    ADD PRIMARY KEY (`fuel_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
    ADD PRIMARY KEY (`message_id`),
  ADD KEY `FKt492th6wsovh1nush5yl5jj8e` (`conversation_id`),
  ADD KEY `FK4ui4nnwntodh6wjvck53dbk9m` (`sender_id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
    ADD PRIMARY KEY (`otp_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
    ADD PRIMARY KEY (`rental_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
    ADD PRIMARY KEY (`review_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
    ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
    ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `transmissions`
--
ALTER TABLE `transmissions`
    ADD PRIMARY KEY (`transmission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
    ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_fees`
--
ALTER TABLE `additional_fees`
    MODIFY `fee_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
    MODIFY `address_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
    MODIFY `amenity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
    MODIFY `history_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
    MODIFY `car_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_features`
--
ALTER TABLE `car_features`
    MODIFY `feature_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `car_locations`
--
ALTER TABLE `car_locations`
    MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
    MODIFY `conversation_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuels`
--
ALTER TABLE `fuels`
    MODIFY `fuel_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
    MODIFY `message_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
    MODIFY `otp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
    MODIFY `rental_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
    MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
    MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
    MODIFY `term_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transmissions`
--
ALTER TABLE `transmissions`
    MODIFY `transmission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
    ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_history`
--
ALTER TABLE `booking_history`
    ADD CONSTRAINT `booking_history_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`rental_id`) ON DELETE CASCADE;

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
    ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`transmission_id`) REFERENCES `transmissions` (`transmission_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cars_ibfk_3` FOREIGN KEY (`fuel_id`) REFERENCES `fuels` (`fuel_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cars_ibfk_4` FOREIGN KEY (`location_id`) REFERENCES `car_locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `car_amenities`
--
ALTER TABLE `car_amenities`
    ADD CONSTRAINT `car_amenities_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`amenity_id`) ON DELETE CASCADE;

--
-- Constraints for table `car_feature_map`
--
ALTER TABLE `car_feature_map`
    ADD CONSTRAINT `car_feature_map_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_feature_map_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `car_features` (`feature_id`) ON DELETE CASCADE;

--
-- Constraints for table `car_images`
--
ALTER TABLE `car_images`
    ADD CONSTRAINT `car_images_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE;

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
    ADD CONSTRAINT `FK5lkkagycdth4e4wt3vi21v7c7` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKaim02rk3jmh6iu2532wid9ukn` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
    ADD CONSTRAINT `FK4ui4nnwntodh6wjvck53dbk9m` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKt492th6wsovh1nush5yl5jj8e` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`);

--
-- Constraints for table `otp_verification`
--
ALTER TABLE `otp_verification`
    ADD CONSTRAINT `otp_verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
    ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rentals_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
    ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
    ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
