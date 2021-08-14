-- Create by xuanthulab.net
CREATE DATABASE hitdb;
USE hitdb;

-- Khachhang
DROP TABLE IF EXISTS Khachhang;
CREATE TABLE Khachhang (
    KhachhangID INTEGER  PRIMARY KEY AUTO_INCREMENT,
    HoTen       VARCHAR (255),
    TenLienLac  VARCHAR (255),
    Diachi      VARCHAR (255),
    Thanhpho    VARCHAR (255),
    MaBuudien   VARCHAR (255),
    QuocGia     VARCHAR (255) 
);

-- Sanpham
DROP TABLE IF EXISTS Sanpham;
CREATE TABLE Sanpham (
    SanphamID  INTEGER PRIMARY KEY AUTO_INCREMENT,
    TenSanpham VARCHAR (255),
    CungcapID  INT,
    DanhmucID  INT,
    Donvi      VARCHAR (255),
    Gia        DECIMAL(13, 2),
    KhachhangID INT,
    CONSTRAINT lien_ket_01 FOREIGN KEY (KhachhangID) REFERENCES Khachhang(KhachhangID)    
);

-- AUTO_INCREMENT 

-- Table: Khachhang
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (1, 'Đặng Tuấn Anh', 'Đặng Tuấn Anh', 'nkhbiq Bà Rịa - Vũng Tàu', 'Bà Rịa - Vũng Tàu', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (2, 'Hoàng Đức Anh', 'Hoàng Đức Anh', 'u Kiên Giang', 'Kiên Giang', '100', 'Đức');


-- Table: Sanpham
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia, KhachhangID) VALUES (1, 'Bia 333', 1, 1, 'thùng', 300000, 1);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia, KhachhangID) VALUES (2, 'Nước ngọt Coca cola', 1, 1, 'thùng', 200000, 2);
