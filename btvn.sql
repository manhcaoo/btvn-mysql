create schema StudentManagement;
use StudentManagement;


create table Student (
id int auto_increment primary key,
full_name varchar(45),
datOfBirth date,
class_id int,
scholarship boolean,
province varchar(30)


);

create table Class (
id int auto_increment primary key,
class_name varchar(10),
course_id int
);


create table Course (
id int auto_increment primary key,
course_name varchar(30),
CBGD_number int
);


create table Subjects (
id int auto_increment primary key,
subject_name varchar(30),
subject_number int
);


create table Result (
student_id int auto_increment primary key,
subject_id varchar(30),
final_gradde int,
foreign key (student_id) references Student(id)
);

show tables;
describe Student;
describe Subjects;
describe Result;

select * from course;
select * from class;
select * from student;
select * from student_with_scholar;
select * from 




alter table Result   
add constraint subject_id
foreign key (subject_id) references Subjects(id);




-- Câu 1: Liệt kê danh sách các lớp của khoa, thông tin cần Malop, TenLop, MaKhoa
-- class and course

SELECT Class.id, Class.class_name, Course.id
FROM Class
INNER JOIN Course ON Course.id=Course.id;


-- Câu 2: Lập danh sách sinh viên gồm: MaSV, HoTen, HocBong.



CREATE VIEW Student_List AS
SELECT id, full_name, scholarship
FROM Student;


-- Câu 3: Lập danh sách sinh viên có học bổng. Danh sách cần MaSV, Nu, HocBong

CREATE VIEW Student_With_Scholar AS
SELECT id, province, scholarship
FROM Student;

-- Câu 5: Lập danh sách sinh viên có họ ‘Trần’
SELECT * 
FROM Student
WHERE full_name LIKE 'tran%';

-- Câu 6: Lập danh sách sinh viên nữ có học bổng
SELECT * 
FROM Student
WHERE province LIKE 'ha noi' ;


-- Câu 7: Lập danh sách sinh viên nữ hoặc danh sách sinh viên có học bổng
 
 SELECT * 
FROM Student
WHERE province LIKE 'ha noi' or '' ;

-- Câu 8: Lập danh sách sinh viên có năm sinh từ 1978 đến 1985. Danh sách cần các thuộc tính của quan hệ SinhVien

SELECT *
FROM Student
WHERE datOfBirth BETWEEN 1978-01-01 AND 1990-01-01;

-- Câu 9: Liệt kê danh sách sinh viên được sắp xếp tăng dần theo MaSV

SELECT *
FROM Student
WHERE id > 0
ORDER BY id ; 


-- Câu 10: Liệt kê danh sách sinh viên được sắp xếp giảm dần theo HocBong 


SELECT *
FROM Student
WHERE scholarship > 0
ORDER BY scholarship ;

-- Câu 14: Cho biết số sinh viên của mỗi lớp

SELECT *
FROM student
WHERE class_id = 2;




