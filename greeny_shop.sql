-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 10, 2022 lúc 03:59 PM
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
(4, NULL, 'Rau'),
(5, NULL, 'Trái cây'),
(6, NULL, 'Củ quả');

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

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `address`, `amount`, `order_date`, `phone`, `status`, `user_id`) VALUES
(1, 'ha tinh', 2, '2022-01-29', '0917291997', 2, 1),
(2, 'da nang', 20000, '2022-01-29', '0615856985', 2, 2),
(3, 'ha tinh', 0, '2022-02-12', '0915762565', 3, 1),
(4, 'ha tinh', 0, '2022-02-12', '0915762565', 3, 1),
(6, '68,Đà Nẵng', 0, '2022-02-12', '0915762565', 3, 1),
(7, '266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 67900, '2022-02-12', '0915746525', 2, 2),
(8, '266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 169450, '2022-02-12', '0915291997', 1, 2),
(9, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 115950, '2022-02-12', '0915291997', 3, 2),
(10, '168-Hà Nội', 53050, '2022-02-12', '0916829635', 1, 1),
(11, '266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 123, '2022-02-13', '0915291997', 2, 2),
(12, 'Đà Nẵng', 40500, '2022-02-13', '0915291997', 0, 2),
(13, 'Đà Nẵng', 116050, '2022-02-13', '0915762565', 3, 2),
(14, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 130750, '2022-02-13', '0915291997', 3, 2),
(15, '266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 362000, '2022-02-13', '0915291997', 2, 2),
(16, 'Đà Nẵng', 83550, '2022-02-13', '0915762565', 3, 2),
(17, 'Hà Tĩnh', 362000, '2022-02-13', '0915291997', 0, 1),
(18, 'Đà Nẵng', 24500, '2022-02-15', '0915291997', 0, 2),
(19, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 24250, '2022-02-15', '0915762565', 2, 2),
(20, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 54500, '2022-02-15', '0915746525', 2, 2),
(21, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 244550, '2022-02-15', '0915291997', 0, 2),
(22, '168 Hà Nội', 228000, '2022-02-15', '0915762565', 3, 2),
(23, '68,Đà Nẵng', 40000, '2022-02-16', '0915762565', 2, 2),
(24, 'Liên Chiểu - Đà Nẵng', 55950, '2022-02-16', '0915762565', 0, 2),
(25, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 32000, '2022-02-17', '0915762565', 2, 2),
(26, '268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng', 73750, '2022-02-17', '0915291997', 2, 2),
(29, 'demo địa chỉ', 72500, '2022-02-17', '0915291997', 2, 8),
(30, 'demo địa chỉ', 201500, '2022-02-17', '0915291997', 2, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 3333, 11, 1, 8),
(2, 2222, 1, 2, 8),
(3, 120000, 1, 3, 16),
(4, 39000, 1, 3, 9),
(5, 25000, 1, 3, 10),
(6, 39000, 1, 4, 9),
(7, 25000, 1, 4, 10),
(9, 39000, 1, 6, 9),
(10, 25000, 1, 6, 12),
(11, 40000, 1, 6, 14),
(12, 35000, 2, 7, 18),
(13, 35000, 2, 8, 18),
(14, 25000, 1, 8, 20),
(15, 16000, 1, 8, 8),
(16, 39000, 1, 8, 9),
(17, 25000, 1, 8, 10),
(18, 22000, 3, 9, 17),
(19, 35000, 1, 9, 18),
(20, 16000, 1, 9, 8),
(21, 16000, 1, 10, 8),
(22, 39000, 1, 10, 9),
(23, 16000, 1, 11, 8),
(24, 39000, 1, 11, 9),
(25, 16000, 1, 12, 8),
(26, 25000, 1, 12, 10),
(27, 39000, 1, 13, 9),
(28, 25000, 2, 13, 10),
(29, 30000, 1, 13, 11),
(30, 22000, 1, 14, 17),
(31, 25000, 1, 14, 10),
(32, 30000, 2, 14, 11),
(33, 25000, 1, 14, 13),
(34, 120000, 3, 15, 16),
(35, 10000, 2, 15, 15),
(36, 22000, 1, 16, 17),
(37, 39000, 1, 16, 9),
(38, 25000, 1, 16, 10),
(39, 120000, 3, 17, 16),
(40, 10000, 2, 17, 15),
(41, 25000, 1, 18, 10),
(42, 25000, 1, 19, 13),
(43, 25000, 1, 20, 10),
(44, 30000, 1, 20, 11),
(45, 22000, 1, 21, 17),
(46, 170000, 1, 21, 19),
(47, 25000, 1, 21, 20),
(48, 39000, 1, 21, 9),
(49, 120000, 1, 22, 16),
(50, 25000, 1, 22, 20),
(51, 40000, 2, 22, 14),
(52, 10000, 1, 22, 15),
(53, 40000, 1, 23, 14),
(54, 22000, 1, 24, 17),
(55, 35000, 1, 24, 18),
(56, 16000, 2, 25, 8),
(57, 25000, 1, 26, 10),
(58, 25000, 1, 26, 12),
(59, 25000, 1, 26, 13),
(65, 25000, 1, 29, 20),
(66, 25000, 2, 29, 13),
(67, 170000, 1, 30, 19),
(68, 40000, 1, 30, 14);

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
(8, 'Ớt chuông  là một loại thực vật có hàm lượng chất chống oxi hóa cao, trong 100g ớt chuông có thể cung cấp đến 84 kJ tương đương với 20 kcal. Đặc biệt ớt chuông đỏ là loại có hàm lượng chất dinh dưỡng cao nhất (ớt chuông xanh chứa hàm lượng vitamin C cao g', 0, '2022-01-30', b'0', 16000, '01.jpg', 'Ớt chuông', 24, NULL, 6),
(9, 'Là một loại củ rất quen thuộc trong các món ăn của người Việt. Loại củ này có hàm lượng chất dinh dưỡng và vitamin A cao, được xem là nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào.\r\nCà rốt không ', 5, '2022-01-30', b'0', 39000, '02.jpg', 'Cà rốt', 49, NULL, 6),
(10, 'Dưa leo (hay còn gọi là dưa chuột) được trồng rộng rãi ở nhiều nước khác nhau, có thể được sử dụng với nhiều mục đích khác nhau nhưng dù ở dạng nào dưa leo vẫn giữ nguyên được những giá trị dinh dưỡng của mình. Dưa leo baby với hình dạng giống hệt trái dư', 2, '2022-01-30', b'0', 25000, '03.jpg', 'Dưa leo', 30, NULL, 6),
(11, 'Hay còn được gọi là cà dái dê, đây là một loại rau củ chế biến được thành rất nhiều món ăn thơm ngon như: hấp, xào, nướng, ăn sống,... mỗi dạng đều mang lại hương vị rất ngon. Trong cà tím Nhật chứa hàm lượng chất xơ vô cùng cao và giàu sắt rất tốt cho cơ', 0, '2022-01-30', b'0', 30000, '04.jpg', 'Cà tím', 40, NULL, 6),
(12, 'Đậu bắp là một loại rau quả rất tốt cho sức khỏe đặc biệt cho hệ xương khớp nhưng có giá rất rẻ. Một kg đậu bắp tươi hiện nay có giá chỉ từ 25.000 – 30.000 đồng và đậu bắp sấy khô giá cũng chỉ có 120.000 đồng/1kg mà thôi.', 0, '2022-01-30', b'0', 25000, '05.jpg', 'Đậu bắp', 30, NULL, 6),
(13, 'Là loại rau củ rất tốt cho sức khoẻ của người sử dụng, loại rau củ này không những giúp bổ sung chất dinh dưỡng cần thiết cho cơ thể mà chúng có giúp làm đẹp da cho phái nữ. Cà chua có thể ăn sống hoặc chế biến các món ăn cũng rất ngon.\r\nCà chua được xem ', 3, '2022-01-30', b'0', 25000, '06.jpg', 'Cà chua', 58, NULL, 6),
(14, 'Do có tính mát, thơm, ngọt dịu, nhiều chất xơ khi được nấu nên thường dùng để chế biến thành canh với tôm thịt hoặc xào để tăng độ ngon.\r\nCải ngọt là một trong những loại rau cải được sử dụng phổ biến trong các bữa ăn của người Việt Nam. Cải ngọt có thân ', 0, '2022-01-31', b'0', 40000, '09.jpg', 'Cải ngọt', 50, NULL, 4),
(15, 'Còn gọi là bí đỏ hạt đậu, đây là giống bí có ruột rất đặc, ít hả ăn dẻo và ngọt. Bí hồ lô chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ. Bí hồ lô có thể chế biến thành nhiều món ăn ngon như: sữa bí, canh bí, súp bí,... món nào cũng đều', 0, '2022-01-31', b'0', 10000, '12.jpg', 'Bí đỏ', 40, NULL, 6),
(16, 'Chín đỏ đẹp mắt vô cùng hấp dẫn, bao bì sang trọng, kin đáo và an toàn. Dâu tây hộp 500g chứa nhiều loại đường, protein, axít hữu cơ, pectic và giàu vitamin, chất khoáng cũng như nguyên tố vi lượng giúp tăng cường hệ miễn dịch, bảo vệ mắt, chống ung thư, ', 5, '2022-01-31', b'0', 120000, '13.jpg', 'Dâu tây', 90, NULL, 5),
(17, 'Loại trái cây phổ biến được ưa chuộng giàu chất xơ, vitamin, khoáng chất thiết yếu giúp cung cấp chất dinh dưỡng cho cơ thể con người và mang lại nhiều lợi ích tuyệt vời cho hệ tiêu hóa, tim mạch, giúp mắt sáng, làm đẹp da. Xoài keo có quả chắc giòn giòn ', 0, '2022-01-31', b'0', 22000, '14.jpg', 'Xoài keo', 60, NULL, 5),
(18, 'Cam sành có nguồn gốc từ Việt Nam, được trồng nhiều ở các tỉnh miền Nam và một số tỉnh phía Bắc: Hà Giang, Tuyên Quang, Yên Bái. Cam sành có vỏ dày, sần sùi màu xanh, khi chín có sắc cam, các múi thịt có màu cam. Cam sành rất mọng nước, có vị chua thanh n', 3, '2022-01-31', b'0', 35000, '16.jpg', 'Cam', 98, NULL, 5),
(19, 'Từ vùng trồng nho nổi tiếng cả nước. Nho xanh quả to, tươi ngon, màu sắc đẹp, chứa nhiều vitamin và chất dinh dưỡng có thể ăn trực tiếp hoặc pha chế các loại đồ uống đều ngon. Sản phẩm cam kết bán đúng khối lượng, chất lượng và an toàn tuyệt đối. Bao bì k', 5, '2022-01-31', b'0', 170000, '17.jpg', 'Nho xanh', 60, NULL, 5),
(20, 'Chuối chuyển màu từ xanh đậm sang vàng khi chín, phần thịt trắng ngà hoặc vàng, mềm, nhiều tinh bột khi chin. Chuối vàng là khi chuối chín. Khi chín chuối sẽ có hương vị rất ngon, ăn mềm , dẻo và ngọt, giàu chất xơ, vitamin C, vitamin B6. Chất béo bão hòa', 4, '2022-01-31', b'0', 25000, '18.jpg', 'Chuối', 79, NULL, 5),
(22, 'Bông cải trắng có phần bông màu trắng gắn khít vào nhau, xốp và hơi dai mềm, bên ngoài có lớp lá bao bọc xung quanh, phiến lá cứng và dày. \r\n Một cup bông cải có 3g chất xơ, chiếm 10% nhu cầu hằng ngày . Chất xơ giúp nuôi các vi khuẩn khỏe mạnh trong ruột', 0, '2022-02-16', b'0', 10000, 'suplotrang.jpg', 'Súp lơ trắng', 30, NULL, 4),
(23, 'Xà lách xoắn (hay Xà lách lolo xanh) có vị ngọt đắng, tính mát và thơm nhẹ, kết cấu lá giòn. Là loại rau chứa nhiều vitamin, khoáng chất, rất tốt cho sức khỏe, được nhiều chị em lựa chọn trong thực đơn bữa ăn gia đình. Có tác dụng giải nhiệt, lọc máu, kíc', 2, '2022-02-16', b'0', 10000, 'rauxalach.jpg', 'Rau xà lách', 100, NULL, 4),
(24, 'Hành lá hay gọi là hành hoa, hành hương, hành ta. Hành lá có mùi thơm, vị ngọt và cay the nhè nhẹ khi ăn sống, do đó chúng hay được sử dụng với vai trò là gia vị cho các món ăn. Ngoài ra, hành lá cũng xuất hiện trong một số bài thuốc đông y nhằm phòng hoặ', 0, '2022-02-16', b'0', 10000, 'hanhla.jpg', 'Hành lá', 500, NULL, 4),
(25, 'Rau dền là một trong những loại rau chứa nhiều khoáng chất và vitamin nhất, trong 100g rau dền có chứa 0.32mg vitamin B2, 80mg vitamin C, 267mg canxi, 1.3g chất xơ, 3.9mg chất sắt, 3.5g protein, 411 mg kali và 2.6g khoáng chất.\r\n Rau dền là một loại rau x', 0, '2022-02-17', b'0', 15000, 'rauden.jpg', 'Rau dền', 200, NULL, 4),
(26, 'Ngò rí không chỉ là một loại rau giúp tạo ra hương vị thơm ngon hấp dẫn cho món ăn mà còn có nhiều công dụng tuyệt vời cho sức khỏe. Thường xuyên ăn thực phẩm này giúp bảo vệ tim mạch, hạ huyết áp, làm giảm đường huyết, giúp xương khớp chắc khỏe.Dưới đây ', 0, '2022-02-10', b'0', 3500, 'raungori.jpg', 'Rau ngò rí', 500, NULL, 4),
(27, 'Rau má là loại rau mang đến nhiều công dụng cho sức khỏe của gia đình bạn như: giải độc gan, điều trị táo bón, bệnh tim mạch, làm đẹp da và tăng cường sức đề kháng cho sức khỏe,… rau má có thể dùng làm sinh tố uống giải nhiệt mùa hè, đồng thời cũng dùng đ', 1, '2022-02-17', b'0', 3000, 'rauma.jpg', 'Rau má', 2000, NULL, 4),
(28, 'Bên cạnh những tác dụng giảm viêm và chống oxy hóa, một số hợp chất trong bông cải xanh có thể giúp giảm tổn thương mãn tính của một số mô trong cơ thể. Ngoài giàu dưỡng chất và vitamin, bông cải xanh là loại rau xanh được nghiên cứu cho thấy tác dụng giả', 2, '2022-02-16', b'0', 23000, 'suploxanh.jpg', 'Súp lơ xanh', 500, NULL, 4),
(29, 'Đã quá quen thuộc với mỗi chúng ta. Loại củ này được xuất hiện thường xuyên trên mâm cơm này có rất nhiều công dụng hữu ích. Nó không chỉ tốt cho sức khỏe, làm đẹp hiệu quả mà còn có rất nhiều tác dụng bổ ích khác. Khoai tây có thể chế biến thành canh, sú', 3, '2022-02-16', b'0', 10000, 'khoaitay.png', 'Khoai tây', 500, NULL, 6),
(30, 'Giống như hầu hết các loại trái cây và rau quả có màu cam / đỏ, gấc chứa hàm lượng cao beta-carotene và lycopene. Và hầu hết các lợi ích sức khỏe đã được khẳng định của quả gấc đều bắt nguồn từ hàm lượng beta-carotene và lycopene cao này. Trên thực tế, mỗ', 5, '2022-02-16', b'0', 40000, 'quagat.jpg', 'Quả gất', 1000, NULL, 6),
(31, 'Vị ngọt thanh, hạt nhỏ, vỏ mỏng, là một trong những loại trái cây nhiệt đới đặc trưng của ngày hè, chôm chôm được nuôi trồng theo những tiêu chuẩn an  toàn và chất lượng. Có thể sử dụng là món tráng miệng sau mỗi bữa ăn hoặc làm trái cây dầm.\r\n Chôm chôm ', 6, '2022-02-17', b'0', 50000, 'quachomchom.jpg', 'Chôm chôm', 1000, NULL, 5),
(32, 'Là một trong những loại trái cây đặc sản của Việt Nam. Vú sữa bơ hồng căng mọng có vị ngọt hương thơm bơ sữa hấp dẫn, quyến rũ. Đặc biệt trong cú sữa có chứa các dưỡng chất như canxi, phốt pho, sắt và magiê rất tốt cho sức khỏe phụ nữa mang thai và thai n', 5, '2022-02-15', b'0', 70000, 'quavusua.jpg', 'Quả vú sữa', 1000, NULL, 5),
(33, 'Vải thiều là loại trái cây được nhiều người yêu thích, trái vải chín đỏ, mọng nước và thơm ngọt. Ngoài ăn trực tiếp thì vải còn chế biến thành nhiều món ngon như trà vải, vải sấy khô, siro vải, rau câu vải,.... Tuy nhiên mỗi ngày chỉ nên ăn 6-7 trái, nếu ', 10, '2022-02-18', b'0', 70000, 'vaithieu.jpg', 'Vải thiều', 1000, NULL, 5),
(34, 'Lựu được xem là một trong những loại trái cây nhiệt đới tốt nhất cho sức khỏe. Trong quả lựu chứa một loạt các hợp chất từ thực vật có lợi mà nhiều loại thực phẩm khác không thể so sánh được. Các nghiên cứu đã cho thấy rằng chúng có nhiều lợi ích và làm g', 15, '2022-02-18', b'0', 130000, 'qualuu.jpg', 'Quả lựu', 1000, NULL, 5),
(35, 'Táo nữ hoàng Queen nhập khẩu 100% từ New Zealand (có giấy chứng nhận xuất xứ). Đạt tiêu chuẩn xuất khẩu toàn cầu. Bảo quản tươi ngon đến tận tay khách hàng. Quả tròn, vỏ mỏng có màu sắc đỏ thẫm đẹp mắt. Thịt táo vàng, lõi nhỏ, vị ngọt nhẹ và mùi thơm đậm\r', 12, '2022-02-17', b'0', 200000, 'quatao.jpg', 'Quả táo', 1000, NULL, 5),
(36, 'Chanh vàng Mỹ hay còn gọi là chanh tây, là loại hoa quả nhập khẩu từ Mỹ, có màu vàng, hình bầu dục, có vị chua nhẹ và mùi thơm rất đặc trưng. Chanh vàng vị chua dịu nhưng lại thơm hơn rất nhiều so với chanh ta. Do vậy, khi sử dụng chanh vàng làm nước uống', 5, '2022-02-17', b'0', 20000, 'quachanhvang.jpg', 'Chanh vàng', 1000, NULL, 6);

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
(9, 'ROLE_USER');

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
(8, 'user.png', 'greenyshop.adm@gmail.com', 'demo tên', '$2a$10$zBgbGqKnEPFiMOceXhqwIem4e/JFMYF2rjRElIcuaBAnO.toFIOCm', '2022-02-17', b'1');

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
(8, 9);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

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
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
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
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

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
