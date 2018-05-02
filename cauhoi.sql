-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 02, 2018 lúc 07:27 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quizgamedb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MACH` int(10) UNSIGNED NOT NULL,
  `NDCH` text NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `DA` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bảng chứa các câu hỏi';

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`MACH`, `NDCH`, `A`, `B`, `C`, `D`, `DA`) VALUES
(1, 'Có một tàu điện đi về hướng nam. Gió hướng tây bắc. Vậy khói từ con tàu sẽ theo hướng nào?', 'A. Đông.', 'B. Tây.', 'C. Bắc.', 'D. Không hướng nào.', 'D'),
(2, 'Làm thế nào để không đụng phải ngón tay khi bạn đập búa vào một cái móng tay?', 'A. Cầm búa bằng cả 2 tay.', 'B. Cầm búa bằng tay trái.', 'C. Cầm búa bằng tay phải', 'D. Cầm búa bằng chân', 'A'),
(3, 'Có anh chàng dừng xe ở trước cửa 1 Nhà nghỉ nọ, vẻ như đang chờ ai đó. Chợt có một bà bầu đi ngang qua, anh ta liền hỏi: \"Chị làm ơn coi hộ mấy giờ?\". Chị kia đáp nhanh: \"Mười tám tháng\". Anh chàng vội cảm ơn rồi lẩm bẩm \"Mình đến sớm 20phút rồi, lấy phòng lên nằm đợi vậy\".\r\nBạn cho biết lúc đó đồng hồ trên tay anh kia chỉ mấy giờ?', 'A. 5h30\'', 'B. 15h30\'', 'C. 10h00\'', 'D. 18h30\'', 'A'),
(4, 'Nếu bạn nhìn thấy con chim đang đậu trên nhánh cây, làm sao để lấy nhánh cây mà không làm động con chim?', 'A. Bắt chim bỏ ra ngoài', 'B. Đợi chim bay đi.', 'C. Ru chim ngủ rồi lấy.', 'D. Cứ đến mà lấy.', 'B'),
(5, 'Miệng rộng lớn nhưng không nói một từ, là con gì?', 'A. Con cá voi.', 'B. Con khỉ đột.', 'C. Con sông.', 'D. Con voi.', 'C'),
(6, 'Có bao nhiêu chữ C trong câu sau: \"Cơm, canh, cá, tất cả em đều thích\"?', 'A. 1', 'B. 2', 'C. 4', 'D. 5', 'A'),
(7, 'Loại nước giải khát nào chứa Canxi và Sắt?', 'A. CoCa', 'B. Pepsi', 'C. Cafe', 'D. Sinh tố', 'C'),
(8, 'Có 1 ông đi săn, ổng đi vào 3 cái hang. Hang 1 ông ấy gặp một con ma, hang 2 ông gặp trái cà, hang 3 ông gặp một con rồng. Hỏi hang thứ tư ông gặp con gì?', 'A. Cương thi', 'B. Ma cà tưng', 'C. Ma cà rồng', 'D. Ai biết!', 'C'),
(9, 'Nằm giữa Thái Bình Dương là gì?', 'A. Nước', 'B. Cá', 'C. Bình', 'D. Ai biết', 'C'),
(10, 'Một cậu bé thấy ngoài cổng làng có đám đông liền chạy lại xem, hóa ra có 2 người đang thách đố nhau, mỗi người nói ra 1 câu, nếu người kia không tin thì sẽ phải đưa người nói 5 đồng. Trong 2 người thì có 1 người rất thật thà nên bị thua còn kẻ vô lại kia lại thắng cuộc. Cậu bé thấy thế liền vào chơi hộ người thật thà. Theo bạn, cậu bé chỉ nói duy nhất câu gì?', 'A. Tôi là người thật thà.', 'B. Anh nợ tôi một triệu đồng.', 'C. Tôi rất tỉnh và đẹp trai.', 'D. Ông xấu quắc!', 'A'),
(11, '1 giọt nước cộng 1 giọt nước bằng mấy giọt nước?', 'A. 4', 'B. 3', 'C. 2', 'D. 1', 'D'),
(12, 'Làm thế nào để qua được câu này?', 'A. Bỏ cuộc', 'B. Cho tôi qua đi mà', 'C. Không thể qua', 'D. Câu này khó quá', 'A'),
(13, '8 chia 4 = ?', 'A. 1/4', 'B. 1/2', 'C. 3/4', 'D. 4/3', 'D'),
(14, 'Có 2 người cha và 2 người con cùng chia đều số tiền là 27 nghìn. Hỏi mỗi người được bao nhiều?', 'A. 6,75', 'B. 7', 'C. 7,5', 'D. 9', 'D'),
(15, 'Có 1 đàn chuột điếc đi ngang qua hố cống, hỏi có mấy con?', 'A. 12', 'B. 18', 'C. 24', 'D. 30', 'C'),
(16, 'Cái gì mà đi thì nằm, đứng cũng nằm, nhưng nằm lại đứng?', 'A. Cái bàn', 'B. Cái ghế', 'C. Bàn chân', 'D. Bàn tay', 'C'),
(17, 'Bố mẹ có 6 người con trai, mỗi người con trai có một đứa em gái. Vậy gia đình đó có mấy người?', 'A. 8', 'B. 9', 'C. 10', 'D. 11', 'B'),
(18, 'Chồng người da đen, vợ người da trắng vừa sinh một đứa bé, răng của nó màu gì?', 'A. Trắng', 'B. Đen', 'C. Vàng', 'D. Đỏ', 'A'),
(19, 'Sở thú bị cháy, con gì chạy ra đầu tiên?', 'A. Con chim', 'B. Con rắn', 'C. Con người', 'D. Con tê giác', 'C'),
(20, 'Cha của Ly có 5 người con tên thứ nhất, thứ hai, thứ ba, thứ Năm, hỏi tên của người con thứ 5 là gì?', 'A. Thứ 6', 'B. Ly', 'C. Út', 'D. Cả', 'B'),
(21, 'Bệnh gì bác sỹ bó tay?', 'A. HIV', 'B. Gãy tay', 'C. Siđa', 'D. Bệnh sĩ', 'B'),
(22, 'Nắng ba năm tôi không bỏ bạn, mưa 1 ngày sao bạn lại bỏ tôi là cái gì?', 'A. Mưa và mây', 'B. Bóng', 'C. Mèo', 'D. Chó', 'B');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`MACH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `MACH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
