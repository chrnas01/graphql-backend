CREATE TABLE tutors (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(320) UNIQUE NOT NULL,
	phone VARCHAR(15) UNIQUE,
	rating INT DEFAULT 0,
	CONSTRAINT chk_rating CHECK (0 <= rating AND rating <= 5)
);

CREATE TABLE students (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(320) UNIQUE NOT NULL,
	phone INT UNIQUE
);

CREATE TABLE courses (
	id INT AUTO_INCREMENT PRIMARY KEY,
	code varchar(8) UNIQUE NOT NULL,
	name varchar(200) NOT NULL
);

CREATE TABLE classes (
	id INT NOT NULL,
	course_id INT NOT NULL,
	tutor_id INT NOT NULL,
	student_id INT NOT NULL,
	CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(id)
		ON DELETE CASCADE,
	CONSTRAINT fk_tutor FOREIGN KEY (tutor_id) REFERENCES tutors(id)
		ON DELETE CASCADE,
	CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(id)
		ON DELETE CASCADE
);