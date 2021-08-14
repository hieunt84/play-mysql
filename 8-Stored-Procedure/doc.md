### Tham khảo (Ref)
    https://freetuts.net/gioi-thieu-mysql-stored-procedure-la-gi-299.html

### Stored Procedure (SP) là gì
    - là hàm trong MySQL, giống với hàm trong ngôn ngữ lập trình (PHP, Python)
    - tập hợp nhiều câu lệnh SQL để thực hiện công việc gì đó (update, insert dữ liệu)

### Tại sao cần có view
    - cần tối ưu hiệu suất ứng dụng trong một số trường hợp.

### Nhược điểm của SP
    - ít được sử dụng trong lập trình website vì đã dùng phía ngôn ngữ lập trình

### Cú pháp Tạo SP
    DELIMITER $$
    CREATE PROCEDURE procedureName()
    BEGIN
       /*Xu ly*/
    END; $$
    DELIMITER 

    Ví dụ 1:
    DELIMITER $$
    CREATE PROCEDURE GetAllProducts()
    BEGIN
      /*Xu ly*/
    END; $$
    DELIMITER ;
    DELIMITER $$
 
    Ví dụ 2:
    DELIMITER $$
    DROP PROCEDURE IF EXISTS `GetAllProducts`$$ 
    CREATE PROCEDURE `GetAllProducts`()
    BEGIN
       SELECT *  FROM Sanpham;
    END$$ 
    DELIMITER ;

    GetAllProducts: hàm thực hiện lấy thông tất cả sản phẩm từ bảng Sanpham
    Tham khảo hình để hiểu thêm : images/sp1
    
### Sử Dụng SP
    CALL GetAllProducts;