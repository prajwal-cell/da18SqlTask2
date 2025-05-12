create table department(
	id varchar primary key,
	name varchar,
	building varchar,
	head_of_dept varchar,
	established_year int
)

copy department from 'D:/DA18/GithubData/da18SqlTask2/department.csv' DELIMITER ',' csv header

select * from department


create table faculty(
	id varchar primary key,
	name varchar,
	title varchar,
	email varchar,
	mob_no BIGINT
)

drop table faculty

copy faculty from 'D:/DA18/GithubData/da18SqlTask2/faculty.csv' DELIMITER ',' csv header

select * from faculty


create table student(
	id varchar primary key,
	name varchar,
	department_id varchar,
	email varchar,
	year_of_admission int,
	FOREIGN key(department_id) REFERENCES department(id)
)

copy student from 'D:/DA18/GithubData/da18SqlTask2/student.csv' DELIMITER ',' csv header

select * from student


create table course(
	id varchar primary key,
	title varchar,
	faculty_id varchar,
	credits int,
	semester_offered varchar,
	FOREIGN key(faculty_id) REFERENCES faculty(id)
)

copy course from 'D:/DA18/GithubData/da18SqlTask2/course.csv' DELIMITER ',' csv header

select * from course



create table courseRegistration(
	id varchar primary key,
	student_id varchar,
	course_id varchar,
	date_registered date,
	grade_received varchar,
	FOREIGN key(student_id) REFERENCES student(id),
	FOREIGN key(course_id) REFERENCES course(id)
)

copy courseRegistration from 'D:/DA18/GithubData/da18SqlTask2/courseRegistration.csv' DELIMITER ',' csv header

select * from courseRegistration