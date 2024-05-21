	CREATE DATABASE IF NOT EXISTS C2;
	USE C2;

	CREATE TABLE IF NOT EXISTS Khoa (
		MaKhoa CHAR(20) PRIMARY KEY,
		TenKhoa NVARCHAR(50)
	);

	CREATE TABLE IF NOT EXISTS MonHoc (
		MaMH CHAR(10) PRIMARY KEY,
		TenMH VARCHAR(50)
	);
	
    CREATE TABLE IF NOT EXISTS SinhVien(
		MaSV char(10) primary key, 
        HoSV nvarchar(50),
        Ten nvarchar(50),
        NgaySinh datetime,
        Phai nchar(3),
        MaKhoa nvarchar(5),
        FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
    );
    create table if not exists KetQua(
		MaSV char(10),
        MaMH char(10),
        Lanthi int,
        Diem numeric(5,1),
        PRIMARY KEY (MaSV, MaMH),
		FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
		FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
    );
	

	INSERT INTO Khoa (MaKhoa, TenKhoa)
	VALUES
		('CNTT', N'CÔNG NGHỆ THÔNG TIN'),
		('DTVT', N'ĐIỆN TỬ VIỄN THÔNG'),
		('QTKD', N'QUẢN TRỊ KINH DOANH'),
		('NNN', N'NGÔN NGỮ NHẬT');

	INSERT INTO MonHoc (MaMH, TenMH)
	VALUES
		('MH001', 'Toán căn bản'),
		('MH002', 'Lập trình C'),
		('MH003', 'Tiếng Anh cơ bản'),
		('MH004', 'Giải tích'),
		('MH005', 'Cấu trúc dữ liệu');
	INSERT INTO SinhVien (MaSV, HoSV, Ten, NgaySinh, Phai, MaKhoa)
	VALUES
		('SV001', N'Nguyễn', N'Văn A', '2000-01-01', 'Nam', 'CNTT'),
		('SV002', N'Trần', N'Thị B', '2000-02-02', 'Nữ', 'QTKD'),
		('SV003', N'Lê', N'Thị C', '2000-03-03', 'Nữ', 'DTVT'),
		('SV004', N'Phạm', N'Văn D', '2000-04-04', 'Nam', 'NNN'),
		('SV005', N'Hoàng', N'Thị E', '2000-05-05', 'Nữ', 'CNTT');

	INSERT INTO KetQua (MaSV, MaMH, Lanthi, Diem)
	VALUES
		('SV001', 'MH001', 1, 8.5),
		('SV001', 'MH002', 1, 7.0),
		('SV001', 'MH003', 1, 9.0),
		('SV002', 'MH001', 1, 6.0),
		('SV002', 'MH002', 1, 8.0),
		('SV002', 'MH003', 1, 7.5),
		('SV003', 'MH001', 1, 9.0),
		('SV003', 'MH002', 1, 8.5),
		('SV003', 'MH003', 1, 8.0),
		('SV004', 'MH001', 1, 7.5),
		('SV004', 'MH002', 1, 6.5),
		('SV004', 'MH003', 1, 7.0),
		('SV005', 'MH001', 1, 8.0),
		('SV005', 'MH002', 1, 8.5),
		('SV005', 'MH003', 1, 9.0);
	

SELECT * FROM Khoa;
SELECT * FROM MonHoc;
SELECT * FROM SinhVien;
SELECT * FROM KetQua;
