-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2022 lúc 06:23 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `greeny_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_image`, `category_name`) VALUES
(4, NULL, 'Giày thể thao'),
(5, NULL, 'Giày Converse'),
(6, NULL, 'Giày Nike');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Đỏ'),
(2, 'Trắng'),
(3, 'Đen'),
(4, 'Vàng'),
(5, 'Xám'),
(6, 'Nâu'),
(7, 'Xanh'),
(8, 'Cam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `rate_date` date DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `size_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `entered_date` date DEFAULT NULL,
  `favorite` bit(1) NOT NULL,
  `price` double NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `description`, `discount`, `entered_date`, `favorite`, `price`, `product_image`, `product_name`, `quantity`, `status`, `category_id`) VALUES
(42, 'Giày CONVERSE X DIOR Viễn thị Hộp đựng giày thủ công cao cấp. Converse 1970S Dior United là phiên bản độc quyền!', 0, '2022-08-14', b'0', 1300000, 'wsxc1656411646692_0-300x300.jpg', 'CONVERSE 1970S X DIOR', 100, NULL, 5),
(43, 'Converse được biết đến là một thương hiệu trẻ trung với tính ứng dụng cao, đa dạng kiểu mẫu và màu sắc nên có thể dễ dàng kết hợp cùng nhiều phong cách khác nhau.', 0, '2022-08-14', b'0', 650000, 'd69abfa6d6de2d8074cf.jpg', 'CONVERSE TRẺ EM', 100, NULL, 5),
(44, 'Giày Converse trẻ em hoa cao cổ màu trắng ra đời nhằm chiều lòng các fans nữ. Đôi giày với thiết kế cao cổ kiểu truyền thống nhưng được nhấn thêm họa tiêt hoa 5 cánh. Điều đó làm tổng thể đôi giày năng động trở nên vô cùng mềm mại.', 0, '2022-08-14', b'0', 1000000, 'a.jpg', 'CONVERSE CAO CỔ', 50, NULL, 5),
(45, 'Converse được biết đến là một thương hiệu trẻ trung với tính ứng dụng cao, đa dạng kiểu mẫu và màu sắc nên có thể dễ dàng kết hợp cùng nhiều phong cách khác nhau.', 0, '2022-08-14', b'0', 700000, 'b.jpg', 'CONVERSE 1970S', 50, NULL, 5),
(46, '2K Sneaker Giày chạy bộ thể thao cổ điển phong cách cổ điển “White / Blue / Yellow” Zoom2000 series “White Royal Blue Yellow” AO0269-005', 0, '2022-08-14', b'0', 800000, 'wsxc1656250948076_0-600x450.jpg', 'SNEAKER ZOOM 2000', 50, NULL, 4),
(47, 'Giày Louis Vuitton Trainer siêu cấp đầu cuối được đặt trong cửa hàng, và vị trí là lực đẩy chính Mức mua ZP cấp trọn gói Hộp đen độc quyền trên thị trường. Phối màu bắt mắt nhất Giày thể thao trên sàn diễn Louis Vuitton Trainer.', 0, NULL, b'0', 455000, 'wsxc1656163220384_0-600x450.jpg', 'LOUIS VUITTON', 50, NULL, 4),
(48, 'Giày Louis Vuitton Trainer siêu cấp đầu cuối được đặt trong cửa hàng, và vị trí là lực đẩy chính Mức mua ZP cấp trọn gói Hộp đen độc quyền trên thị trường. Phối màu bắt mắt nhất Giày thể thao trên sàn diễn Louis Vuitton Trainer.', 0, '2022-08-14', b'0', 450000, 'wsxc1656163220384_0-600x450.jpg', 'LOUIS CLASSIC', 50, NULL, 4),
(49, 'Giày Dior Nữ siêu cấp Oblique Low”Walk’n’Dior” họa tiết màu đỏ', 0, '2022-08-14', b'0', 400000, 'wsxc1656255108974_0-600x450.jpg', 'DIOR NỮ SIÊU CẤP', 50, NULL, 4),
(50, 'Giày Nike Jordan 1 Retro 4 màu xanh đỏ trắng đen giá rẻ nhất tại Việt Nam. Capvirgo chuyên: Order/Sỉ/Lẻ giày nike jordan 1 retro với chất lượng tốt nhất và mẫu mã mới nhất.', 0, '2022-08-14', b'0', 780000, 'v.jpg', 'NIKE JORDAN', 50, NULL, 6),
(51, 'Giày trẻ em AJ12 Joe 12. Được làm từ chất liệu da bò cao cấp, họa tiết vải thô đầy đặn, quá trình may phóng xạ phần trên khiến đôi chân trông siêu dài khi mặc. Những đứa trẻ thời thượng nhất định phải mua giày', 0, '2022-08-14', b'0', 560000, 'wsxc1660124912491_1.jpg', 'TRẺ EM NIKE', 50, NULL, 6),
(52, 'Giày Nike Air Jordan 1 Mid GS “Lucid Green” trẻ em màu đen logo hồng', 0, '2022-08-14', b'0', 456000, 'wsxc1659347172865_0-600x523.jpg', 'NIKE AIR MID GS', 50, NULL, 6),
(53, 'Giày Nike Jordan 1 Retro màu full trắng giá rẻ nhất tại Việt Nam. Capvirgo chuyên: Order/Sỉ/Lẻ giày nike jordan 1 retro với chất lượng tốt nhất và mẫu mã mới nhất.', 0, '2022-08-14', b'0', 900000, 'c.jpg', 'JORDAN 1 RETRO', 90, NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `id_color` bigint(20) DEFAULT NULL,
  `id_product` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`id`, `id_color`, `id_product`) VALUES
(3, 1, 42),
(4, 2, 42),
(5, 3, 42),
(6, 1, 43),
(7, 3, 43),
(8, 7, 44),
(9, 2, 44),
(10, 7, 45),
(11, 1, 46),
(12, 1, 47),
(13, 1, 49),
(14, 1, 50),
(15, 1, 51),
(16, 1, 52),
(17, 1, 53);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) DEFAULT NULL,
  `id_size` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `id_product`, `id_size`) VALUES
(3, 42, 1),
(4, 42, 4),
(5, 42, 6),
(6, 43, 1),
(7, 43, 4),
(8, 44, 1),
(9, 45, 1),
(10, 46, 1),
(11, 47, 1),
(12, 49, 1),
(13, 50, 1),
(14, 51, 1),
(15, 52, 1),
(16, 53, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_USER'),
(4, 'ROLE_ADMIN'),
(5, 'ROLE_ADMIN'),
(6, 'ROLE_USER'),
(7, 'ROLE_USER'),
(8, 'ROLE_USER'),
(9, 'ROLE_USER'),
(10, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, '35'),
(2, '36'),
(3, '37'),
(4, '38'),
(5, '39'),
(6, '40'),
(7, '41'),
(8, '42'),
(9, '43'),
(10, '44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `avatar`, `email`, `name`, `password`, `register_date`, `status`) VALUES
(1, 'user.png', 'thaochi6402@gmail.com', 'Trần Thảo Chi', '$2a$10$NNFj7.bICFpxqYTsCswbe.BNGHGicL0LZzXmm.UCLz8sWrM3EL3IC', '2022-01-29', b'1'),
(2, 'user.png', 'huudong297@gmail.com', 'Trần Hữu Đồng', '$2a$10$.XOXsgTmumdrVdQc74mqUO180lLS0OefXAyPIdiVw0IshtW5WYDMm', '2022-01-29', b'1'),
(3, 'user.png', 'dongthd@fpt.edu.vn', 'user', '$2a$10$UtRFor3y5PqxHKFEt1HgAOOaX7tlQs1oEhJA/VLFoUVGKo3OBkISS', '2022-01-30', b'1'),
(4, 'user.png', 'greenyshop123vn@gmail.com', 'Admin Greeny Shop', '$2a$10$Hd54fYSXGv6Pqve.WjeLO.DyNv2gGIq/S2Drilp12ClD6gYzhh4jO', '2022-02-15', b'1'),
(5, 'user.png', 'demo@gmail.com', 'user1', '$2a$10$GtfloNhLVXQaKdXvmueUfu14h6ijuwFHMLb1icK4rsuzpWa6jOh72', '2022-02-17', b'1'),
(6, 'user.png', 'demo2@gmail.com', 'user2', '$2a$10$PUWkbGnEa1OdKmxiQfvw/u3oh3I09nGG6zVHmGLxgigSJC2tCz4Ta', '2022-02-17', b'1'),
(7, 'user.png', 'demo3@gmail.com', 'user3', '$2a$10$ePg/cUabs6dShg4hC4Buv.QaVFx6VqqBUSlmQBntalEOAaWCfY2Hi', '2022-02-17', b'1'),
(8, 'user.png', 'greenyshop.adm@gmail.com', 'demo tên', '$2a$10$zBgbGqKnEPFiMOceXhqwIem4e/JFMYF2rjRElIcuaBAnO.toFIOCm', '2022-02-17', b'1'),
(9, 'user.png', 'nguyencaonguyencmu@gmail.com', 'Nguyen Cao Nguyen', '$2a$10$foXtTSZQyRVZCe0NvWvWcuKsACUSYzvw.GIjE.uRUWPpSdLtwTwKe', '2022-08-14', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfwepd0s8syqc9s06xnqa7mdwf` (`order_detail_id`),
  ADD KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  ADD KEY `FKqi14bvepnwtjbbaxm7m4v44yg` (`user_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  ADD KEY `FK1uphh0glinnprjknyl68k1hw1` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  ADD KEY `FKlpk2b92g4nhmkhbyalc040rv8` (`color_id`),
  ADD KEY `FKeb0379tyg61806knc84pcls6g` (`size_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKd5iq9oilt2a1qd6r5ff4tppsm` (`id_color`),
  ADD KEY `FKktjhgqgbxctxtdlxopux4ifve` (`id_product`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt3iuwe3pon0k0i2q5pd68n4ik` (`id_product`),
  ADD KEY `FK6fxbikls9s0pbsqq68nr4m5fo` (`id_size`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKfwepd0s8syqc9s06xnqa7mdwf` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`),
  ADD CONSTRAINT `FKqi14bvepnwtjbbaxm7m4v44yg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `FK1uphh0glinnprjknyl68k1hw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKeb0379tyg61806knc84pcls6g` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FKlpk2b92g4nhmkhbyalc040rv8` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `FKd5iq9oilt2a1qd6r5ff4tppsm` FOREIGN KEY (`id_color`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `FKktjhgqgbxctxtdlxopux4ifve` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `FK6fxbikls9s0pbsqq68nr4m5fo` FOREIGN KEY (`id_size`) REFERENCES `size` (`id`),
  ADD CONSTRAINT `FKt3iuwe3pon0k0i2q5pd68n4ik` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
