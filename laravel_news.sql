-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2022 lúc 10:56 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Trong nước', 'trong-nuoc', '2022-06-23 08:28:36', '2022-06-23 08:28:36'),
(2, 1, 'Ngoài nước', 'ngoai-nuoc', '2022-06-23 08:28:54', '2022-06-23 08:28:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_09_021546_Tao_TheLoai', 1),
(4, '2016_06_09_021610_Tao_LoaiTin', 1),
(5, '2016_06_09_021813_Tao_TinTuc', 1),
(6, '2016_06_09_022526_Tao_Slide', 1),
(7, '2016_06_09_022904_Tao_Comment', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(1, 'tac duong cau long bien', 'oICr_z3513694248708-553fb7b319e1869397286135512296c4-331.jpg', '<p>testtttt</p>', NULL, '2022-06-23 07:05:57', '2022-06-23 07:23:26'),
(2, 'tac duong cau long bien', 'oKq4_z3513694248708-553fb7b319e1869397286135512296c4-331.jpg', '<p>bbb</p>', NULL, '2022-06-23 07:06:09', '2022-06-23 07:25:28'),
(4, 'tac duong cau long bien', 'LjgC_z3513694248708-553fb7b319e1869397286135512296c4-331.jpg', '<p>aaaaaaaa</p>', NULL, '2022-06-23 07:19:57', '2022-06-23 07:19:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Chính trị', 'chinh-tri', '2022-06-23 07:26:43', '2022-06-23 07:26:43'),
(2, 'Thời sự', 'thoi-su', '2022-06-23 07:26:56', '2022-06-23 07:26:56'),
(3, 'Kinh doanh', 'kinh-doanh', '2022-06-23 07:27:07', '2022-06-23 07:27:07'),
(4, 'Thế giới', 'the-gioi', '2022-06-23 07:27:16', '2022-06-23 07:27:16'),
(5, 'Giải trí', 'giai-tri', '2022-06-23 07:27:26', '2022-06-23 07:27:26'),
(6, 'Thể thao', 'the-thao', '2022-06-23 07:27:34', '2022-06-23 07:27:34'),
(7, 'Sức khỏe', 'suc-khoe', '2022-06-23 07:27:45', '2022-06-23 07:27:45'),
(8, 'Đời sống', 'doi-song', '2022-06-23 07:27:51', '2022-06-23 07:27:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 'Tổng Bí thư nói về việc kỷ luật ông Nguyễn Thanh Long, Chu Ngọc Anh', 'tong-bi-thu-noi-ve-viec-ky-luat-ong-nguyen-thanh-long-chu-ngoc-anh', '<p><span style=\"color:rgb(93, 93, 93); font-family:arial; font-size:16px\">Sáng 23/6, Tổng Bí thư Nguyễn Phú Trọng cùng các ĐBQH đơn vị bầu cử số 1 TP Hà Nội tiếp xúc cử tri quận Ba Đình, Đống Đa, Hai Bà Trưng sau kỳ họp thứ 3 tại trụ sở quận Ba Đình.</span></p>', '<div class=\"newFeature__main-textBold\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: medium; line-height: 26px; font-family: arial; color: rgb(64, 64, 64);\">Sáng 23/6, Tổng Bí thư Nguyễn Phú Trọng cùng các ĐBQH đơn vị bầu cử số 1 TP Hà Nội tiếp xúc cử tri quận Ba Đình, Đống Đa, Hai Bà Trưng sau kỳ họp thứ 3 tại trụ sở quận Ba Đình.</div>\r\n\r\n<div class=\"maincontent \" id=\"maincontent\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: 28px; font-family: arial; color: rgb(80, 80, 80);\">\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; font: inherit;\">\r\n<p>Hội nghị tổ chức theo hình thức trực tiếp kết hợp trực tuyến từ điểm cầu chính tại trụ sở quận Ba Đình và 55 điểm cầu tại quận Đống Đa, quận Hai Bà Trưng và các phường với hơn 1.200 cử tri tham gia.</p>\r\n\r\n<p>Tại cuộc tiếp xúc, các cử tri bày tỏ sự ủng hộ, đồng tình với nhiều giải pháp về kỷ luật, kỷ cương, phòng chống tham nhũng, tiêu cực trong quản lý đất đai và đồng tình cao việc thành lập Ban Chỉ đạo phòng chống tham nhũng, tiêu cực cấp tỉnh. Cử tri cho rằng, việc này giúp đảm bảo công tác phòng, chống tiêu cực luôn có “tai mắt của nhân dân”; giúp phát hiện và xử lý kịp thời, đúng đối tượng có hành vi&nbsp;<a href=\"https://vietnamnet.vn/thoi-su/chong-tham-nhung\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">tham nhũng, tiêu cực</a>.&nbsp;</p>\r\n<img src=\"https://static-images.vnncdn.net/files/publish/2022/6/23/289085504-431076831975880-7013777595204886750-n-481.jpg\" style=\"--tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-color:#fff; --tw-ring-offset-shadow:0 0 #0000; --tw-ring-offset-width:0px; --tw-ring-shadow:0 0 #0000; --tw-rotate:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-shadow-colored:0 0 #0000; --tw-shadow:0 0 #0000; --tw-skew-x:0; --tw-skew-y:0; --tw-translate-x:0; --tw-translate-y:0; border:0px; box-sizing:border-box; font:inherit; height:auto; margin:0px; max-width:100%; padding:0px; text-rendering:optimizespeed\" />\r\n<p>Tổng Bí thư Nguyễn Phú Trọng và các đại biểu</p>\r\n\r\n<p>Bên cạnh đó, các ý kiến cử tri cũng đánh giá cao công tác điều hành linh hoạt tại kỳ họp thứ 3, ghi nhận các nội dung chất vấn, tranh luận đã đi thẳng trọng tâm, ngắn gọn, phản ánh sát thực tế đời sống và nguyện vọng nhân dân; và mong muốn các vấn đề đã được thảo luận tại Quốc hội, cùng những lời hứa sẽ được Chính phủ, Thủ tướng Chính phủ, các vị đứng đầu các bộ ngành chỉ đạo thực hiện nghiêm túc, nhanh chóng tạo ra các chuyển biến tích cực.</p>\r\n\r\n<p>Cử tri cũng đã kiến nghị, đề xuất nhiều vấn đề liên quan như: môn học Lịch sử phải là môn học bắt buộc; bổ sung sách giáo khoa vào danh mục hàng hóa, dịch vụ do Nhà nước định giá; kiểm soát chặt chẽ việc biên soạn, xuất bản SGK; chấn chỉnh việc đào tạo, sử dụng nguồn nhân lực chất lượng cao…</p>\r\n\r\n<p>Sau khi Phó Chủ tịch UBND TP Hà Nội Dương Đức Tuấn trao đổi, giải đáp một số ý kiến, kiến nghị cử tri nêu, Tổng Bí thư Nguyễn Phú Trọng đã phát biểu, trao đổi với cử tri.</p>\r\n\r\n<p>Về công tác đấu tranh phòng, chống tham nhũng, xử lý tiêu cực, vừa qua Quốc hội đã bãi nhiệm ĐBQH, phê chuẩn cách chức Bộ trưởng Bộ Y tế với ông Nguyễn Thanh Long và xử lý ông<a href=\"https://vietnamnet.vn/chu-ngoc-anh-tag11735895220563615362.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">&nbsp;Chu Ngọc Anh</a>, Chủ tịch UBND TP Hà Nội, trước đây công tác ở Bộ KH&amp;CN do liên quan đến&nbsp;<a href=\"https://vietnamnet.vn/60-nguoi-bi-khoi-to-lien-quan-dai-an-viet-a-2028588.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">công ty Việt Á</a>.</p>\r\n<img src=\"https://static-images.vnncdn.net/files/publish/2022/6/23/289026435-842340773405475-997566362252293401-n-482.jpg\" style=\"--tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-color:#fff; --tw-ring-offset-shadow:0 0 #0000; --tw-ring-offset-width:0px; --tw-ring-shadow:0 0 #0000; --tw-rotate:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-shadow-colored:0 0 #0000; --tw-shadow:0 0 #0000; --tw-skew-x:0; --tw-skew-y:0; --tw-translate-x:0; --tw-translate-y:0; border:0px; box-sizing:border-box; font:inherit; height:auto; margin:0px; max-width:100%; padding:0px; text-rendering:optimizespeed\" />\r\n<p>Tổng Bí thư tại cuộc tiếp xúc cử tri.</p>\r\n\r\n<p>Tổng Bí thư khẳng định lại tinh thần trong công tác phòng, chống tham nhũng \"rất kiên trì, rất nhân văn, có lý, có tình và rất có bài bản, hết sức thuyết phục\".</p>\r\n\r\n<p>Tổng Bí thư cho biết, Bộ Chính trị thảo luận rất kỹ và<a href=\"https://vietnamnet.vn/tong-bi-thu-rat-nghen-ngao-tai-cuoc-hop-ky-luat-cuu-bo-truong-nguyen-thanh-long-2030793.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">&nbsp;100% đã bỏ phiếu yêu cầu kỷ luật khai trừ ra khỏi Đảng</a>. Ngày hôm sau triệu tập Hội nghị Trung ương bất thường, BCH Trung ương họp, thảo luận và hoàn toàn nhất trí với ý kiến của Bộ Chính trị. BCH Trung ương cũng bỏ phiếu gần như tuyệt đối hoàn toàn đồng ý về việc khai trừ ra khỏi Đảng. Ngay sáng hôm sau họp Quốc hội bãi miễn tư cách đại biểu và cách chức Bộ trưởng Bộ Y tế.</p>\r\n\r\n<p>\"Cả hai lúc đầu chưa nhận thức hết. Nhưng cuối cùng đều nhận thức được và hứa hẹn rằng sẽ sửa chữa. Sau khi mất chức ủy viên Trung ương, mất chức Bộ trưởng, ngay chiều hôm ấy, cơ quan công an khởi tố, bắt tạm giam để tiếp tục điều tra. Chúng ta phòng, chống tham nhũng làm rất bài bản như thế. Hiện nay&nbsp;<a href=\"https://vietnamnet.vn/6-thang-dieu-tra-vu-viet-a-va-2-ngay-tra-gia-cua-2-cuu-uy-vien-trung-uong-2028196.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">đang trong giai đoạn tiếp tục điều tra</a>\", Tổng Bí thư Nguyễn Phú Trọng nêu rõ.</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2022/6/23/287589804-5901124396581737-334282463707395886-n-483.jpg\" style=\"--tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-color:#fff; --tw-ring-offset-shadow:0 0 #0000; --tw-ring-offset-width:0px; --tw-ring-shadow:0 0 #0000; --tw-rotate:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-shadow-colored:0 0 #0000; --tw-shadow:0 0 #0000; --tw-skew-x:0; --tw-skew-y:0; --tw-translate-x:0; --tw-translate-y:0; border:0px; box-sizing:border-box; font:inherit; height:auto; margin:0px; max-width:100%; padding:0px; text-rendering:optimizespeed\" /></p>\r\n\r\n<p>Tổng Bí thư cho biết, cuối tháng này, Trung ương sẽ tổ chức hội nghị toàn quốc tổng kết 10 năm công tác đấu tranh phòng, chống tham nhũng để nhìn lại giai đoạn từ khi thành lập Ban Chỉ đạo Trung ương về phòng, chống tham nhũng, tiêu cực trực thuộc Bộ Chính trị. Hội nghị nhằm tổng kết kết quả, hạn chế từ đó rút ra những bài học kinh nghiệm để áp dụng cho giai đoạn mới.</p>\r\n\r\n<p>Còn về ý kiến cho rằng “kỷ luật nhiều cán bộ như vậy thì lấy ai để làm việc”,&nbsp;<a href=\"https://vietnamnet.vn/tong-bi-thu-nguyen-phu-trong-tag4400315609568785955.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; text-rendering: optimizespeed; color: rgb(45, 103, 173); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: notosans-regular; text-underline-offset: 1px;\" target=\"_blank\">Tổng Bí thư Nguyễn Phú Trọng</a>&nbsp;cho rằng, không lo không có cán bộ làm việc, bởi cán bộ không chỉ vi phạm pháp luật mà còn sai cả về đạo lý thì không thể không xử lý. Quan trọng là phải chọn đúng cán bộ thay thế, phải làm thật chính xác, chín chắn, không được vội vàng.</p>\r\n\r\n<p>Trần Thường - Ảnh: X.Đ</p>\r\n</div>\r\n</div>', '1kYI_Capturezzz.jpg', 1, 0, 1, '2022-06-23 08:31:57', '2022-06-23 08:51:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `quyen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'boss', 'boss@gmail.canh', '$2y$10$EWFbW01IIHhcplkTDuQCsOkIkNxFxf7/mzVkH78tjtg8ki9.k.Y5u', 1, NULL, '2022-06-23 05:41:49', NULL),
(4, 'toandn', 'toandn@gmail.com', '$2a$12$pVfmpZB4onenMU067WqkAux4h8l6LH5r8jHw3vAdm7f4W/lkje7CK', 1, NULL, NULL, NULL),
(6, 'toandn1', 'toandn1@gm.com', '$2y$10$HVV1O7lTFb2oYTEXNs0bQeBu8czxPf0lA57Z7qGbkCQ27q/XydUi.', 1, NULL, '2022-06-23 06:25:10', '2022-06-23 06:25:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_iduser_foreign` (`idUser`),
  ADD KEY `comment_idtintuc_foreign` (`idTinTuc`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitin_idtheloai_foreign` (`idTheLoai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_idloaitin_foreign` (`idLoaiTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_idtintuc_foreign` FOREIGN KEY (`idTinTuc`) REFERENCES `tintuc` (`id`),
  ADD CONSTRAINT `comment_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_idtheloai_foreign` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`id`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_idloaitin_foreign` FOREIGN KEY (`idLoaiTin`) REFERENCES `loaitin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
