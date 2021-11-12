CREATE DATABASE BAN_LAPTOP
/*----------BẢNG TÀI KHOẢN*/
CREATE TABLE [dbo].[TAIKHOAN](
	[USERNAME] [nvarchar](50) NOT NULL,
	[PASSWORD] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[MOTA_TK] [nvarchar](255) NULL,
	[TRANGTHAI_TK] [int] NULL,
	[LOAI_TK] [nvarchar](20) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-------BẢNG CHI TIẾT HÓA ĐƠN*/
CREATE TABLE [dbo].[CHITIET_HOADON](
	[MA_HD] [nvarchar](10) NOT NULL,
	[MA_SP] [nvarchar](10) NOT NULL,
	[TRANGTHAI_CTHD] [int] NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [int] NULL,
	[GIAM] [int] NULL,
	[THANHTIEN] [int] NULL
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MA_HD] ASC,
	[MA_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*---------BẢNG HÓA ĐƠN*/
CREATE TABLE [dbo].[HOADON](
	[MAHD] [nvarchar](10) NOT NULL,
	[MA_KH] [nvarchar](10) NULL,
	[TONGTIEN] [int] NULL,
	[LOAIHD] [varchar](1) NULL,
	[TRANGTHAI_HD] [int] NULL,
	[MA_NCC] [nvarchar](10) NULL,
	[NGAYLAP_HD] [datetime] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-----------BẢNG KHÁCH HÀNG*/
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [nvarchar](20) NOT NULL,
	[TENKH] [nvarchar](200) NULL,
	[SDT_KH] [nvarchar](20) NULL,
	[DC_KH] [nvarchar](500) NULL,
	[EMAIL_KH] [nvarchar](200) NULL,
	[TRANGTHAI_KH] [int] NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-------BẢNG KHO HÌNH*/
CREATE TABLE [dbo].[KHOHINH](
	[MAHINH] [int] IDENTITY(1,1) NOT NULL,
	[MADOITUONG] [nvarchar](20) NOT NULL,
	[TENFILE] [nvarchar](255) NULL,
	[GHICHU] [nvarchar](2000) NULL,
 CONSTRAINT [PK_KHOHINH] PRIMARY KEY CLUSTERED 
(
	[MAHINH] ASC,
	[MADOITUONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-------BẢNG LOẠI HÓA ĐƠN*/
CREATE TABLE [dbo].[LOAIHOADON](
	[MALOAIHD] [varchar](1) NOT NULL,
	[TENLOAIHD] [nvarchar](200) NULL,
	[TRANGTHAI] [bit] NULL,
 CONSTRAINT [PK_LOAIHD] PRIMARY KEY CLUSTERED 
(
	[MALOAIHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-------BẢNG DÒNG SẢN PHẨM*/
CREATE TABLE [dbo].[DONGSANPHAM](
	[MADONGSP] [nvarchar](10) NOT NULL,
	[TENDONGSP] [nvarchar](200) NULL,
	[TRANGTHAI_DONGSP] [int] NULL,
 CONSTRAINT [PK_DONGSP] PRIMARY KEY CLUSTERED 
(
	[MADONGSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*-------BẢNG LOẠI TÀI KHOẢN*/
CREATE TABLE [dbo].[LOAITAIKHOAN](
	[MALOAI] [nvarchar](20) NOT NULL,
	[TENLOAI_TK] [nvarchar](20) NOT NULL,
	[MOTA_LOAITK] [nvarchar](20) NULL,
 CONSTRAINT [PK_LOAITAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG NHÀ CUNG CẤP*/
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [nvarchar](10) NOT NULL,
	[TENNCC] [nvarchar](200) NULL,
	[SDT_NCC] [nvarchar](12) NULL,
	[DC_NCC] [nvarchar](500) NULL,
	[TK_NCC] [nvarchar](100) NULL,
	[STK_NCC] [nvarchar](20) NULL,
	[TRANGTHAI_NCC] [int] NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG SẢN PHẨM*/
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [nvarchar](10) NOT NULL,
	[TENSP] [nvarchar](200) NOT NULL,
	[GIA_NHAP] [int] NULL,
	[GIA_BAN] [int] NULL,
	[TONKHO] [int] NULL,
	[TRANGTHAI_SP] [int] NULL,
	[MADONG] [nvarchar](10) NULL,
	[MA_NCC] [nvarchar](10) NULL,
	[MO_TA_SP] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG TRẠNG THÁI CƠ BẢN*/
CREATE TABLE [dbo].[TRANGTHAI_COBAN](
	[TRANGTHAI] [int] NOT NULL,
	[TENTRANGTHAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_TRANGTHAI_COBAN] PRIMARY KEY CLUSTERED 
(
	[TRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG TRẠNG THÁI CHI TIẾT HÓA ĐƠN*/
CREATE TABLE [dbo].[TRANGTHAI_CT_HOADON](
	[TRANGTHAI] [int] NOT NULL,
	[TENTRANGTHAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_TRANGTHAI_CT_HOADON] PRIMARY KEY CLUSTERED 
(
	[TRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG TRẠNG THÁI HÓA ĐƠN*/
CREATE TABLE [dbo].[TRANGTHAI_HOADON](
	[TRANGTHAI] [int] NOT NULL,
	[TENTRANGTHAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_TRANGTHAI_HOADON] PRIMARY KEY CLUSTERED 
(
	[TRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------BẢNG TRẠNG THÁI SẢN PHẨM*/
CREATE TABLE [dbo].[TRANGTHAI_SANPHAM](
	[TRANGTHAI] [int] NOT NULL,
	[TENTRANGTHAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_TRANGTHAI_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[TRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/*----------------INSERT THÔNG TIN BẢNG--------------*/
INSERT INTO TRANGTHAI_COBAN (TRANGTHAI, TENTRANGTHAI) VALUES (0, N'Tạm ngưng');
INSERT INTO TRANGTHAI_COBAN (TRANGTHAI, TENTRANGTHAI) VALUES (1, N'Hoạt động');

INSERT INTO TRANGTHAI_CT_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (0, N'Đã Huỷ');
INSERT INTO TRANGTHAI_CT_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (1, N'Còn hàng');

INSERT INTO TRANGTHAI_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (0, N'Đã huỷ');
INSERT INTO TRANGTHAI_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (1, N'Đang giao hàng');
INSERT INTO TRANGTHAI_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (2, N'Đã giao hàng');
INSERT INTO TRANGTHAI_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (3, N'Đã thanh toán');
INSERT INTO TRANGTHAI_HOADON (TRANGTHAI, TENTRANGTHAI) VALUES (4, N'Hoàn thành');

INSERT INTO TRANGTHAI_SANPHAM (TRANGTHAI, TENTRANGTHAI) VALUES (0, N'Hết hàng');
INSERT INTO TRANGTHAI_SANPHAM (TRANGTHAI, TENTRANGTHAI) VALUES (1, N'Còn hàng');
INSERT INTO TRANGTHAI_SANPHAM (TRANGTHAI, TENTRANGTHAI) VALUES (2, N'Dừng kinh doanh');

INSERT INTO LOAIHOADON (MALOAIHD, TENLOAIHD) VALUES (N'N', N'Nhập hàng');
INSERT INTO LOAIHOADON (MALOAIHD, TENLOAIHD) VALUES (N'X', N'Xuất/Bán hàng');

INSERT INTO DONGSANPHAM (MADONGSP, TENDONGSP) VALUES (N'Case', N'Case - Vỏ máy tính');

/*--------------------APPLE--------------------*/
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'prom1', N'Laptop Apple MacBook Pro M1 2020', 40000000, 52000000, 50, 1, N'MacBook', N'MacBook', N'Thương hiệu: Apple. 
Vi xử lí M1 mạnh mẽ đột phá.
Thiết kế sang trọng, đẳng cấp.
Không gian hiển thị tuyệt mĩ trên màn hình 13.3 inch.
RAM: 16 GB.
SSD: 1 TB.
Bảo hành: 12 tháng.');
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'air-m1', N'Laptop Apple MacBook Air M1 2020', 30000000, 37500000, 89, 1, N'MacBook', N'MacBook', N'Thương hiệu: Apple. 
Vi xử lí M1 mạnh mẽ đột phá.
Thiết kế sang trọng, đẳng cấp.
Hiệu năng ổn định, đa nhiệm mượt mà.
RAM: 16 GB.
SSD: 512 GB.
Bảo hành: 12 tháng.');
/*------------------------ASUS-----------------*/
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'GA401QEC-R9', N'Laptop Asus ROG Zephyrus G14 Alan Walker', 35000000, 44990000, 125, 1, N'ROG', N'Asus', N'Thương hiệu: Asus. 
Ngoại hình đơn giản, ấn tượng nhưng không kém phần cá tính.
Sẵn sàng tác chiến cùng game thủ trên mọi chiến trường.
Hành trình trở thành nhà sản xuất âm nhạc tài ba .
RAM: 16 GBDDR4 2 khe (8GB onboard+ 1 khe 8GB)3200 MHz.
SSD: 1 TB.
Bảo hành: 24 tháng.');
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'FX516PM', N'Laptop Asus TUF Gaming FX516PM', 24000000, 32490000, 425, 1, N'TUF Gaming', N'Asus', N'Thương hiệu: Asus. 
Cấu hình chuẩn gaming, thỏa sức chiến mọi tựa game.
Huyền bí, sang trọng trong thiết kế.
Màn hình giải trí game chất lượng cao, thỏa mãn tầm nhìn.
RAM: 16 GBDDR4 2 khe (8GB onboard+ 1 khe 8GB)3200 MHz.
SSD: 512 GB.
Bảo hành: 24 tháng.');
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'ka111t', N'Laptop Asus ZenBook UX482EA', 31200000, 39400000, 56, 1, N'ZenBook', N'Asus', N'Thương hiệu: Asus. 
Thiết kế cao cấp mang xu hướng của phong cách hiện đại.
Gây ấn tượng sâu sắc với bộ đôi hai màn hình nổi bật.
Sức mạnh hiệu năng từ con chip Intel Gen 11.
RAM: 16 GBLPDDR4X (On board)4267 MHz
SSD: 1 TB.
Bảo hành: 24 tháng.');
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'ec227t', N'Laptop Asus VivoBook TM420IA R7', 15500000, 19900000, 74, 1, N'VivoBook', N'Asus', N'Thương hiệu: Asus. 
Thiết kế hiện đại, sang trọng.
Hiệu năng mạnh mẽ, tối ưu tiến độ công việc.
Hình ảnh sắc nét, âm thanh sống động.
RAM: 8 GBDDR4 (On board 4GB +1 khe 4GB)3200 MHz
SSD: 512 GB.
Bảo hành: 24 tháng.');
INSERT INTO SANPHAM (MASP, TENSP, GIA_NHAP, GIA_BAN, TONKHO, TRANGTHAI_SP, MADONG, MA_NCC, MO_TA_SP) VALUES (N'59987', N'Laptop Asus ExpertBook B9400CEA', 15500000, 19900000, 74, 1, N'ExpertBook', N'Asus', N'Thương hiệu: Asus. 
CPU: Intel® Core i5-1135G7 (upto 4.20GHz, 8MB).
VGA: Intel Iris Xe Graphics.
Hình ảnh sắc nét, âm thanh sống động.
RAM: 16 GBLPDDR4X (On board)4267 MHz
SSD: 1 TB.
Bảo hành: 24 tháng.');
SET IDENTITY_INSERT [dbo].[KHOHINH] ON 
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (001, N'prom1', N'laptopapplemacbookprom1-1-org.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (002, N'prom1', N'laptopapplemacbookprom1-2-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (003, N'prom1', N'laptopapplemacbookprom1-3-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (004, N'air-m1', N'macbook-air-m1-2020-z12a00050-1.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (005, N'air-m1', N'macbook-air-m1-2020-z12a00050-2.jpg', null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (006, N'air-m1', N'macbook-air-m1-2020-z12a00050-3.jpg', null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (008, N'GA401QEC-R9', N'asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-1-org.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (009, N'GA401QEC-R9', N'asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-2-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (010, N'GA401QEC-R9', N'asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-3-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (011, N'FX516PM', N'asus-tuf-gaming-fx516pm-i7-hn023t-1-org.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (012, N'FX516PM', N'asus-tuf-gaming-fx516pm-i7-hn023t-2-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (013, N'FX516PM', N'asus-tuf-gaming-fx516pm-i7-hn023t-3-org.jpg', NULL)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (014, N'ka111t', N'asus-zenbook-ux482ea-i7-ka111t-1-org.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (015, N'ka111t', N'asus-zenbook-ux482ea-i7-ka111t-2-org.jpg', Null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (016, N'ka111t', N'asus-zenbook-ux482ea-i7-ka111t-3-org.jpg', null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (017, N'ec227t', N'asus-vivobook-tm420ia-r7-ec227t-1-org.jpg', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (018, N'ec227t', N'asus-vivobook-tm420ia-r7-ec227t-2-org.jpg', Null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (019, N'ec227t', N'asus-vivobook-tm420ia-r7-ec227t-3-org.jpg', Null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (020, N'59987', N'59987_laptop_asus_expertbook_b9_b9400cea_kc0593t_den_tui_7.png', N'Cover')
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (021, N'59987', N'59987_laptop_asus_expertbook_b9_b9400cea_kc0593t_den_tui_6.png', Null)
INSERT [dbo].[KHOHINH] ([MAHINH], [MADOITUONG], [TENFILE], [GHICHU]) VALUES (022, N'59987', N'59987_laptop_asus_expertbook_b9_b9400cea_kc0593t_den_tui_5.png', Null)

SET IDENTITY_INSERT [dbo].[KHOHINH] OFF