### Tham khảo (Ref)
    https://freetuts.net/database-view-la-gi-database-view-trong-mysql-239.html

### View là gì
    - Bảng ảo trong cơ sở dữ liệu.
    - Kết quả của câu truy vấn (select) từ các một bảng hoặc từ nhiều bảng cơ bản.
    - View là 1 khái niệm có trong nhiều hệ quản trị cơ sở dữ liệu
      ví dụ : MSSQL,...

### Tại sao cần có view
    - Tổng hợp dữ liệu theo nhu cầu
       Ví dụ: Từ Bảng Đơn hàng chi tiết, lấy ra 10 đơn hàng có danh thu lớn nhất lưu vào View, rồi từ đó thể hiện trên ứng dụng web, giúp giảm thời gian truy vấn để lấy được thông tin cần thiết khi truy vấn vào bảng Bảng Đơn hàng chi tiết.
    - Tiện dụng khi sử dụng
    - Đảm bảo an toàn thông tin vì view chỉ được xem, không được chỉnh, xóa, sửa dữ liệu
    - Đảm bảo an toàn thông tin vì chỉ cho phép xem dữ liệu cần thiết và cấp quyền cho người xem
      ví dụ: Cấp quyền cho phòng kế toán xem các đơn hàng trong 1 tháng gần đây.

### Lệnh Tạo view
    CREATE VIEW [database_name].[view_name] AS
      //Câu truy vấn
    Ví dụ
    CREATE VIEW db.view1 AS
      SELECT * FROM DonhangChitiet
      ORDER BY Soluong DESC
      LIMIT 3;    
    View1: Chứa thông tin 3 đơn hàng có số lượng cao nhất
    Tham khảo hình để hiểu thêm : images/view1

### Ứng dụng view1
    Tạo user trong cơ sở dữ liệu chỉ cho phép truy vấn view1
    CREATE USER 'ketoan'@'%' IDENTIFIED WITH mysql_native_password BY 'Abc123!@#';
    GRANT SELECT ON db.view1 TO 'ketoan'@'%';