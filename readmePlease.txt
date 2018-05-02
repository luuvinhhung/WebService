https://github.com/luuvinhhung/WebService
database: MySQL : quizgamedb -> bảng cauhoi

url GET, DELETE: get, xóa theo id
http://localhost:8080/WebService/resources/greeting/1

GET tất cả câu hỏi:
http://localhost:8080/WebService/resources/greeting/getall

url POST (Create) bao gồm tiếng việt có dấu
http://localhost:8080/WebService/resources/greeting/post?ndch=Câu Hỏi&a=40&b=53.3&c=66.7&d=83.3&DA=c

url PUT:  (Update) kiểm tra tồn tại id mới sửa
http://localhost:8080/WebService/resources/greeting/23?ndch=cauhoi&a=40&b=53.3&c=66.7&d=83.3&DA=c

url lấy số lượng câu hỏi:
http://localhost:8080/WebService/resources/greeting/getnum


