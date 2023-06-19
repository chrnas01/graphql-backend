INSERT INTO tutors(name, email, phone)
VALUES 
("John Smith", "jsmith@gmail.com", "0419487561"),
("Hans Solo", "hsolo@gmail.com", "0419487541"),
("Dwayne Johnson", "djohnson@gmail.com", null),
("Eric Wang", "ewang@gmail.com", null),
("Jeff Seid", "jseid@gmail.com", "0429487561");

INSERT INTO students(name, email)
VALUES
("Christopher Read", "cread@gmail.com"),
("Cameron Diaz", "cdiaz@gmail.com"),
("Connor Mcgregor", "cmg@gmail.com"),
("Tom Cruise", "tcruise@gmail.com"),
("Edward Frank", "efrank@gmail.com"),
("Nate Diaz", "ndiaz@gmail.com"),
("Nathan Cleary", "ncleary@gmail.com"),
("Jim Carey", "jcarey@gmail.com"),
("Jack Jack", "jj@gmail.com"),
("Marshall Mathers", "eminem@protonmail.com"),
("Steven Seagal", "ss@gmail.com"),
("Bugs Bunny", "bb@hotmail.com"),
("50 Cent", "50@gmail.com"),
("Dr Dre", "dd@bing.com"),
("Prince Harry", "pharry@gmail.com");

INSERT INTO courses(code, name)
VALUES
("COMP1511", "Programming Fundamentals"),
("COMP1521", "Computer Systems Fundamentals"),
("COMP1531", "Software Engineering Fundamentals"),
("COMP1911", "Computing 1A"),
("COMP1927", "Computing 1B");

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 1, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1511" 
	AND tutors.email="jsmith@gmail.com" 
	AND students.email="cread@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 1, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1511" 
	AND tutors.email="jsmith@gmail.com" 
	AND students.email="cdiaz@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 1, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1511" 
	AND tutors.email="jsmith@gmail.com" 
	AND students.email="cmg@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 2, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1521" 
	AND tutors.email="hsolo@gmail.com" 
	AND students.email="tcruise@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 2, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1521" 
	AND tutors.email="hsolo@gmail.com" 
	AND students.email="efrank@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 2, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1521" 
	AND tutors.email="hsolo@gmail.com" 
	AND students.email="ndiaz@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 3, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1531" 
	AND tutors.email="djohnson@gmail.com" 
	AND students.email="ncleary@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 3, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1531" 
	AND tutors.email="djohnson@gmail.com" 
	AND students.email="jcarey@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 3, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1531" 
	AND tutors.email="djohnson@gmail.com" 
	AND students.email="jj@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 4, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1911" 
	AND tutors.email="ewang@gmail.com" 
	AND students.email="eminem@protonmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 4, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1911" 
	AND tutors.email="ewang@gmail.com" 
	AND students.email="ss@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 4, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1911" 
	AND tutors.email="ewang@gmail.com" 
	AND students.email="bb@hotmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 5, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1927" 
	AND tutors.email="jseid@gmail.com" 
	AND students.email="50@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 5, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1927" 
	AND tutors.email="jseid@gmail.com" 
	AND students.email="dd@bing.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 5, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1927" 
	AND tutors.email="jseid@gmail.com" 
	AND students.email="pharry@gmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 6, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1511" 
	AND tutors.email="jseid@gmail.com" 
	AND students.email="eminem@protonmail.com";

INSERT INTO classes(id, course_id, tutor_id, student_id)
SELECT 6, courses.id, tutors.id, students.id 
FROM courses, tutors, students 
WHERE courses.code="COMP1511" 
	AND tutors.email="jseid@gmail.com" 
	AND students.email="cread@gmail.com";