CREATE DATABASE IF NOT EXISTS QLDiem;
USE QLDiem;

-- Tạo bảng Khoa trước vì các bảng khác tham chiếu đến nó
CREATE TABLE Khoa (
    Makhoa char(5) PRIMARY KEY,
    Tenkhoa varchar(50) UNIQUE
);

-- Sau đó tạo các bảng khác
CREATE TABLE SinhVien (
    MaSV char(10) PRIMARY KEY,
    HoSV varchar(50),
    Ten varchar(50),
    Ngaysinh Datetime,
    Phai char(3),
    Makhoa char(5),
    FOREIGN KEY (Makhoa) REFERENCES Khoa(Makhoa)
);

CREATE TABLE MonHoc (
    MaMH char(10) PRIMARY KEY,
    TenMH varchar(50),
    Sotiet int
);

CREATE TABLE KetQua (
    MaSV char(10),
    MaMH char(10),
    Lanthi int DEFAULT 1,
    Diem numeric(5,1),
    PRIMARY KEY (MaSV, MaMH),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH),
    CHECK (Diem >= 0 AND Diem <= 10)
);

-- Thêm thông tin vào bảng Khoa
INSERT INTO Khoa (Makhoa, Tenkhoa) VALUES 
('AVAN', 'Khoa anh văn'),
('CNTT', 'Khoa công nghệ thông tin'),
('DTVT', 'Khoa điện tử viễn thông'),
('QTKD', 'Khoa quản trị kinh doanh');

-- Thêm thông tin vào bảng SinhVien
INSERT INTO SinhVien (HoSV, Ten, MaSV, Ngaysinh, Phai, Makhoa) VALUES
('Trần Minh', 'Sơn', 'S001', '1985-05-01 12:00:00', 'Nam', 'CNTT'),
('Nguyễn Quốc', 'Bảo', 'S002', '1986-05-16 12:00:00', 'Nam', 'CNTT'),
('Phan Anh', 'Tùng', 'S003', '1983-12-20 12:00:00', 'Nam', 'QTKD'),
('Bùi Thị Anh', 'Thư', 'S004', '1985-02-01 12:00:00', 'Nữ', 'QTKD'),
('Lê Thị', 'Lan', 'S005', '1987-07-03 12:00:00', 'Nữ', 'DTVT'),
('Nguyễn Thị', 'Lam', 'S006', '1984-11-11 12:00:00', 'Nữ', 'DTVT'),
('Phan Thị', 'Hà', 'S007', '1988-07-03 12:00:00', 'Nữ', 'CNTT'),
('Trần Thế', 'Dũng', 'S008', '1985-12-21 12:00:00', 'Nam', 'CNTT');

-- Thêm thông tin vào bảng MonHoc
INSERT INTO MonHoc (TenMH, MaMH, Sotiet) VALUES
('Anh van', 'AV', 45),
('Co so du lieu', 'CSDL', 45),
('Ki thuat lap trinh', 'KTLT', 60),
('Ke toan tai chinh', 'KTTC', 45),
('Toan cao cap', 'TCC', 60),
('Tin hoc van phong', 'THVP', 30),
('Tri tue nhan tao', 'TTNT', 60);

-- Thêm thông tin vào bảng KetQua
INSERT INTO KetQua (MaSV, MaMH, Lanthi, Diem) VALUES
('S001', 'CSDL', 1, 4),
('S001', 'TCC', 1, 6),
('S002', 'CSDL', 1, 3),
('S002', 'TCC', 2, 6),
('S003', 'KTTC', 1, 5),
('S004', 'AV', 1, 8),
('S004', 'THVP', 1, 4),
('S004', 'TCC', 2, 8),
('S006', 'TCC', 1, 5),
('S007', 'AV', 1, 2),
('S007', 'CSDL', 2, 9),
('S007', 'KTLT', 1, 6),
('S008', 'AV', 1, 7);

-- Truy vấn dữ liệu từ các bảng để kiểm tra
SELECT * FROM Khoa;
SELECT * FROM SinhVien;
SELECT * FROM MonHoc;
SELECT * FROM KetQua;
