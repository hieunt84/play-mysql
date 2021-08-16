### Tham khảo (Ref)
    https://hiepsiit.com/detail/mysql/hequantricsdlmysql/mysqlham
    https://freetuts.net/hoc-mysql/cac-ham-trong-mysql
    https://www.mysqltutorial.org/mysql-aggregate-functions.aspx
    https://vn.got-it.ai/blog/mysql-la-gi-tong-quan-ve-mysql-function
    https://openplanning.net/10325/lap-trinh-database-voi-mysql
    
### Khắc phục lỗi
    https://javahowtos.com/122-databases/371-solved-mysql-issue-this-function-has-none-of-deterministic,-no-sql-or-reads-sql-data.html
    https://qastack.vn/programming/26015160/deterministic-no-sql-or-reads-sql-data-in-its-declaration-and-binary-logging-i

### Function (F) là gì
    - là hàm trong MySQL, giống với Procedure(P) 
    - tập hợp nhiều câu lệnh SQL để thực hiện công việc gì đó nhưng khác P là có trả về giá trị
    - Function có sẵn trong MySQL. Ví dụ, SUM, AVG,...
    - Có thể tự định nghĩa F của mình phục vụ nhu cầu.


### Ví dụ
    SET GLOBAL log_bin_trust_function_creators = 1;
    DELIMITER $$
    CREATE FUNCTION Get_Current_Datetime()
    RETURNS Date
    Begin
        return current_date();
    END $$
    DELIMITER;

    Tham khảo minh họa: images/function1

### Sử dụng
    select db.Get_Current_Datetime();