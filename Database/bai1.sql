-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2021 at 07:28 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bai1`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Oppo'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Acer'),
(5, 'HP');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'Điện thoại iPhone 12 Pro Max 128GB', 3, 1, 31490000, 'iphone-12-pro-max-xanh-duong-1-org.jpg', 'iPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được vát thẳng và mạnh mẽ như trên iPad Pro 2020, chấm dứt hơn 6 năm với kiểu thiết kế bo cong trên iPhone 6 được ra mắt lần đầu tiên vào năm 2014.\r\n', 1, '2021-02-01 09:24:25'),
(2, 'Laptop Acer Nitro 5 Gaming AN515 57 50FT i5 11400H/16GB/512GB/4GB RTX3050/144Hz/Win10 (NH.QD8SV.003)', 4, 2, 26490000, 'acer-nitro-5-gaming-an515-57-50ft-i5-nhqd8sv003-2-2-org.jpg', 'Acer nitro gaming mang một phong cách đơn giản phối cùng những đường cắt tinh tế, góc cạnh làm tôn lên sự mạnh mẽ, cá tính của sản phẩm.\r\n', 0, '2021-09-15 09:43:47'),
(3, 'Máy In Laser Trắng Đen HP Neverstop Laser 1000w Wifi (4RY23A) ', 5, 5, 3390000, 'may-in-hp-neverstop-laser-1000w-4ry23a-trang-1-org.jpg', 'Kiểu dáng hiện đại, thiết kế tinh xảo\r\nMáy in HP thiết kế gọn gàng, tinh tế đến từng chi tiết, lắp đặt và sử dụng tiện lợi trong mọi không gian từ văn phòng làm việc, phòng khách đến phòng ngủ, nhà xưởng.\r\n\r\n', 1, '2021-06-08 02:09:31'),
(4, 'Máy tính bảng Samsung Galaxy Tab S7 FE ', 2, 4, 12790000, 'samsung-galaxy-tab-s7-fe-green-1-org.jpg', 'Galaxy Tab S7 FE có một phiên bản màn hình duy nhất với kích thước lớn 12.4 inch, phần viền bao quanh được thu nhỏ, tạo nên không gian rộng rãi, thoải mái cho bạn làm việc hay giải trí.', 1, '2020-10-15 13:17:39'),
(5, 'Máy tính bảng iPad Pro M1 11 inch WiFi Cellular 128GB (2021) ', 3, 4, 27290000, 'ipad-pro-2021-11-inch-gray-600x600.jpg', 'Apple M1 cho hiệu năng bậc nhất \r\nTrang bị vi xử lý M1 như trên MacBook đã giúp cho iPad Pro 2021 có hiệu năng cực kỳ ấn tượng. Với tốc độ CPU tăng 50%, đồ họa nhanh hơn 40% so với chip A12Z trên iPad Pro 2020.', 1, '2021-08-20 13:25:22'),
(6, 'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB ', 2, 1, 25990000, 'samsung-galaxy-s21-ultra-bac-1-org.jpg', '\r\nMặt lưng của thiết bị được phủ bởi một lớp nhám mờ, sang trọng bền bỉ vừa hạn chế bám dấu vân tay tối đa vừa tạo nên vẻ ngoài tinh xảo và cuốn hút đến bất ngờ.\r\n', 0, '2021-10-07 13:38:12'),
(7, 'Máy in phun màu HP Ink Tank 115 (2LB19A) ', 5, 5, 2290000, 'may-in-phun-mau-hp-ink-tank-115-2lb19a-1-1-org.jpg', 'Thiết kế đẹp mắt, kết cấu chắc chắn\r\nCác đường nét bo gọn cho máy in HP tinh tế, hiện đại, bộ phận đựng mực in nằm ở cạnh mắt, có nắp đậy riêng, thiết kế trong suốt, kiểm tra và đổ mực vào máy đơn giản hơn bao giờ hết. Trọng lượng máy chỉ 3.4 kg, dễ dàng di chuyển.\r\n\r\nCông suất máy in mạnh mẽ\r\nMáy in đơn năng có khả năng in cực ấn tượng với tốc độ in màu là 5 trang/phút, in trắng đen 8 trang/phút, tốc độ in trang đầu tiên là 14 giây, cho phép bạn in số lượng tài liệu lớn trong thời gian ngắn, góp phần nâng cao hiệu suất công việc của bạn tối đa', 0, '2021-05-02 02:04:20'),
(8, 'Máy in Laser đơn năng HP Neverstop 1000a (4RY22A) ', 5, 5, 3090000, 'may-in-laser-hp-neverstop-1000a-4ry21a-600x600.jpg', 'Thiết kế vuông vức, gọn gàng\r\nMáy in Laser đơn năng HP Neverstop 1000a (4RY22A) tạo điểm nhấn ấn tượng với kiểu dáng đơn giản, gam màu trắng pha xám đen trang nhã, logo HP sáng bóng nổi bật ở mặt trước, rất phù hợp bố trí trong phòng khách, phòng ngủ trong nhà hoặc văn phòng làm việc tại cơ quan, công ty.\r\nChức năng in 1 mặt, tốc độ in tối đa 20 trang/phút\r\nCho hiệu suất in ấn tượng với trang đầu tiên xuất ra chỉ sau 7.8 giây, công suất in tối đa 25.000 trang/tháng, máy in phục vụ tốt cho nhu cầu in cao của doanh nghiệp, mang lại lợi ích kinh tế thiết thực.\r\nĐộ phân giải bản in cho 600 x 600 dpi\r\nMáy in laser trắng đen có độ nét vừa đủ để tái hiện chữ và hình rõ ràng, không bị mờ, mất ký tự, ngay cả khi lướt nhanh qua văn bản bạn vẫn có thể nhìn và tiếp thu thông tin dễ dàng. ', 0, '2021-10-11 14:52:47'),
(9, 'Máy tính bảng Samsung Galaxy Tab S6 Lite ', 2, 4, 9090000, 'samsung-galaxy-tab-s6-lite-xanh-1-org.jpg', 'Thiết kế thời thượng và cao cấp\r\nMáy tính bảng Galaxy Tab S6 Lite sở hữu thiết ấn tượng với độ dày chỉ 7mm và trọng lượng siêu nhẹ 467g, giúp người dùng dễ dàng bỏ vào túi xách hay mang theo bất kì đâu.\r\nToàn thân của máy được chế tác từ kim loại nguyên khối cao cấp, đảm bảo độ bền và cho vẻ đẹp sang trọng, thanh thoát.', 1, '2021-09-07 14:56:11'),
(10, 'Điện thoại Samsung Galaxy A52s 5G 256GB ', 2, 1, 11790000, 'samsung-galaxy-a52s-5g-violet-600x600.jpg', 'Thiết kế thời thượng với nhiều màu sắc bắt mắt\r\nSamsung Galaxy A52s 5G vẫn kiểu dáng đơn giản hiện đại, thời thượng tương tự người anh em Galaxy A52 với sự liền mạch trong thiết kế và nhiều màu sắc tinh tế để bạn lựa chọn là Trắng, Tím, Xanh và Đen.', 1, '2020-06-10 05:06:17'),
(11, 'Điện thoại OPPO Reno6 Z 5G ', 1, 1, 899000, 'oppo-reno6-z-5g-bac-1-org.jpg', 'Bộ 3 camera chuyên nghiệp - Mỗi cảm xúc, một chân dung\r\nHệ thống camera sau được trang bị tối tân, trong đó có camera chính 64 MP.', 0, '2020-04-05 15:11:24'),
(12, 'Điện thoại OPPO Find X3 Pro 5G ', 1, 1, 23990000, 'oppo-find-x3-pro-xanh-1-org.jpg', 'Kết quả của sự sáng tạo không ngừng\r\nNếu nhìn qua mặt lưng của OPPO Find X3 Pro 5G thì bạn sẽ bất ngờ ngay với cụm camera sau, được tạo hình giống như miệng núi lửa, thiết kế này đã ngốn rất nhiều thời gian và công sức của nhà sản xuất để mang đến cho người dùng sự khác biệt mới lạ.', 1, '2019-02-11 15:13:13'),
(13, 'Oppo Watch 46mm dây silicone đen ', 1, 3, 5752000, 'oppo-watch-46mm-day-silicone-1-1-org.jpg', 'Thiết kế sang trọng, tinh tế\r\nĐồng hồ thông minh Oppo Watch màu đen phiên bản 46mm sử dụng mặt đồng hồ vuông, bo cong nhẹ ở 4 cạnh, cùng với mặt kính bo cong 2D sang hai bên có chiều sâu tạo cảm giác như mặt kính cong 3D và dải màu rộng chuẩn DCI-P3 cho chất lượng hiển thị sắc nét, sống động.', 1, '2021-10-18 01:48:22'),
(14, 'Laptop Acer Swift 5 SF514 53T 720R i7 8565U/8GB/256GB/Touch/Win10 (NX.H7HSV.002)', 4, 2, 27990000, 'acer-swift-sf5-i7-8565u-8gb-256gb-win10-xanh-duong-1-org.jpg', 'Siêu mỏng, siêu nhẹ\r\nVỏ máy làm từ hợp kim nhẹ nhất là Magie và Liti giúp sản phẩm đạt trọng lượng siêu nhẹ: 940 g. Độ mỏng của máy vào khoảng 14.9 mm chỉ bằng 2 chiếc iPhone 8 Plus xếp chồng lên nhau. Đây là chiếc laptop cao cấp sang trọng đáng sở hữu.', 1, '2020-08-04 15:25:52'),
(15, 'Laptop Acer Aspire 3 A314 35 P6JF N6000/4GB/512GB/Win10 (NX.A7SSV.003) ', 4, 2, 9590000, 'acer-aspire-3-a314-35-p6jf-nxa7ssv003-1-org.jpg', 'Xử lí đa tác vụ công việc, học tập ổn định\r\nAspire 3 A413 được Acer trang bị chip Intel Pentium N6000 cho hiệu năng làm việc của máy ổn định, xử lí mượt mà các tác vụ văn phòng, học tập hay nghe nhạc, lướt web giải trí. Tốc độ xử lí trung bình của chip là 1.10 GHz - 3.33 GHz.', 0, '2018-06-05 15:29:15'),
(16, 'Máy tính bảng iPad Air 4 Wifi Cellular 256GB (2020) ', 3, 4, 24790000, 'ipad-air-4-rose-gold-1020x680-org.jpg', 'Màu sắc cá tính, nhẹ như Air\r\nXứng danh dòng Air của Apple, iPad Air 4 được chế tác từ nhôm tái chế 100%, một chất liệu vô cùng nổi bật trên các mẫu iPad của Apple nửa cuối 2020, bên cạnh khối lượng chỉ 460 g, đem đến những trải nghiệm tuyệt hảo cả về phần nhìn lẫn cảm nhận khi sử dụng.', 0, '2021-03-10 15:33:31'),
(17, 'Máy tính bảng iPad mini 6 WiFi Cellular 256GB ', 3, 4, 23990000, 'ipad-mini-6-wifi-cellular-purple-1-1.jpg', 'Vẻ ngoài sang trọng, cao cấp\r\niPad mini 6 có thiết kế bên ngoài được thừa hưởng từ dòng iPad Pro nhưng với kích thước nhỏ gọn hơn, giúp bạn dễ dàng mang đi bất cứ đâu, sẵn sàng học tập, làm việc hay giải trí mà không hề có cảm giác vướng víu.Máy có trọng lượng chỉ 297 g giúp bạn có thể sử dụng lâu mà không cảm thấy mỏi tay.', 1, '2021-01-05 15:35:57'),
(18, 'Oppo Watch 46mm dây silicone vàng đồng ', 1, 3, 5752000, 'oppo-watch-46mm-day-silicone-hong-1-org.jpg', 'Thiết kế đơn giản đẹp mắt\r\nĐồng hồ thông minh Oppo Watch màu vàng hồng phiên bản 46mm sử dụng mặt đồng hồ vuông, bo cong nhẹ ở 4 cạnh, cùng với mặt kính vát cong 2D có chiều sâu tạo cảm giác như mặt kính cong 3D, màn hình AMOLED 1.91 inch độ phân giải 402 x 476 pixels cho chất lượng hiển thị sắc nét.', 1, '2021-07-14 01:50:44'),
(19, 'Samsung Galaxy Watch Active 2 44mm viền nhôm dây sillicone', 2, 3, 2690000, 'samsung-galaxy-watch-active-2-44-mm-sillicon-den-2-org.jpg', 'Galaxy Watch Active 2 mang thiết kế gọn gàng, mặt kính tròn 44 mm viền cong sang trọng tôn dáng tay. Dây đeo chất liệu Silicone mềm mại có thể tháo rời tiện lợi để bạn thay màu dây tùy ý. Tối ưu hóa hiển thị.', 0, '2021-05-19 01:53:12'),
(20, 'Oppo Watch 41mm dây silicone đen ', 1, 3, 4312000, 'oppo-watch-41mm-day-silicone-den-1-org.jpg', 'Oppo Watch mang nhiều điểm khá giống với Apple watch.', 0, '2021-01-06 01:56:04'),
(21, 'Apple Watch S5 LTE 44mm viền thép dây thép bạc', 3, 3, 18990000, 'bac-org.jpg', 'Apple Watch S5 LTE 44mm viền thép dây thép bạc có dây đeo dạng lưới đan mỏng, được gia công hoàn toàn từ thép không gỉ, vừa quý phái lại vừa mang cảm mát tay khi mang. Màn hình cảm ứng có mặt kính Saphire cứng cáp giúp bảo vệ chiếc đồng hồ của bạn an toàn trước những va đập không mong muốn.\r\n\r\n', 0, '2021-05-19 01:58:29'),
(22, 'Máy in HP Laser Trắng đen đa năng In scan copy LaserJet 135a (4ZB82A)', 5, 5, 3290000, 'hp-laser-da-nang-laserjet-135a-4zb82a-1-org.jpg', 'Kiểu dáng sang trọng, dễ dịch chuyển và bố trí\r\nMáy in HP Laser Trắng đen đa năng In scan copy LaserJet 135a (4ZB82A) thiết kế các mặt tinh xảo, vỏ phủ màu trắng - đen trang nhã, kiểu dáng gọn gàng, tô điểm cho không gian làm việc, sinh hoạt của bạn cao cấp, hiện đại hơn.Nhiều chức năng tiện ích\r\nMáy in hỗ trợ in 1 mặt cùng với copy, scan, cho tốc độ in mạnh mẽ với mỗi phút in được 20 trang, công suất in đến 10.000 trang/tháng, bản in đầu tiên xuất ra trong 8.3 giây. Nhờ đó, người dùng có thể linh hoạt áp dụng nhiều cách xử lý tài liệu để có văn bản hoàn hảo trong thời gian ngắn', 1, '2021-02-01 02:11:40'),
(23, 'Máy in Laser Trắng Đen HP 107w WiFi (4ZB78A) ', 5, 5, 2790000, 'laser-trang-den-hp-107w-wifi-4zb78a-1-org.jpg', 'Máy in HP thiết kế các góc cạnh bo tròn mềm mại, mặt trước in logo thương hiệu nổi bật, kiểu dáng gọn gàng, đặt vững vàng ở nhiều vị trí trong phòng khách, văn phòng làm việc hoặc phòng ngủ của bạn.', 0, '2021-04-06 02:13:35'),
(24, 'Laptop Acer Swift 3 SF313 53 518Y i5 1135G7/16GB/512GB/Win10 (NX.A4JSV.003) ', 4, 2, 22990000, 'acer-swift-3-sf313-53-518y-i5-nxa4jsv003-1-org.jpg', 'Acer Swift 3 SF313 sở hữu bộ vi xử lý Intel Core i5 thế hệ thứ 11 giúp thao tác nhanh gọn và chính xác các tác vụ văn phòng từ cơ bản đến nâng cao đồng thời làm thiết bị sản sinh ít nhiệt, tiết kiệm năng lượng hơn các thế hệ trước nhờ xung nhịp cơ sở đạt 2.4 GHz và công nghệ Turbo Boost ép xung lên tới 4.2 GHz.\r\n\r\n', 1, '2021-10-10 02:21:16'),
(25, 'Laptop Acer Aspire 3 A315 56 36YS i3 1005G1/8GB/512GB/Win10 (NX.HS5SV.008) ', 4, 2, 14000000, 'acer-aspire-3-a315-56-i3-nxhs5sv008-1-org.jpg', 'Thiết kế hiện đại, tinh tế\r\nSở hữu thiết kế đơn giản và tinh tế, Acer Aspire A315 được hoàn thiện từ vỏ nhựa, thân máy mỏng nhẹ chỉ 19.9 mm, nặng 1.7 kg phù hợp với người dùng thường xuyên đem máy đi học, đi làm mỗi ngày.', 0, '2019-05-01 02:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Phone'),
(2, 'Laptop'),
(3, 'Watch'),
(4, 'Tablet'),
(6, 'Printer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(3) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1),
(2, 'guest', '202cb962ac59075b964b07152d234b70', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
