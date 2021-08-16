### Tham khảo (Ref)
     https://viblo.asia/p/tim-hieu-ve-transaction-trong-mysql-RnB5pnxGZPG
     https://hiepsiit.com/detail/mysql/hequantricsdlmysql/transactiontrongmysql


### Transaction(T) (Giao dịch) là gì
    - Transaction trong ngành IT. T là một tiến trình có điểm bắt đầu và kết thúc.
    - T có nhiều hoạt động (operation) bên trong.
    - T thành công khi tất cả hoạt động bên trong đều thành công, 1 hoạt động thất bại thì T đó sẽ thất bại
    - Ví dụ về T: Quá trình cài đặt 1 phần mềm là 1 T.


### Transaction trong MySQL
    - là tập hợp các câu lệnh SQL (seclect, insert,...)
    - Thông thường hệ quản trị mysql điều khiển (control) transaction một cách tự động để đảm các đặc tính của trasaction và tránh rủi ro cho transaction.
    