use qldiem;

-- 1
delete FROM ketqua where MaSV = 'S001';
select *  from ketqua; 

-- 2
SET SQL_SAFE_UPDATES = 0;
UPDATE MonHoc SET Sotiet = 50 WHERE TenMH = 'Tri tue nhan tao';
SELECT * FROM MonHoc;

-- 3
INSERT INTO KetQua (MaSV, MaMH, Lanthi, Diem)
VALUES ('S001', 'CSDL', 1, 4);
SELECT * FROM ketqua;
-- 4
