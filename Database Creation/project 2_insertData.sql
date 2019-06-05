INSERT INTO Student VALUES
('123456789', 'bb192', '292929', '283-11-2939', 'Sam', 'J', 'Zhou', '2017-08-18', 1, 1, 1, 'bb@b.com', 283818292, 1, 1, 1, 1, 1, 1, 1, 1, 89),
('123422789', 'c919', '292929', '283-21-2939', 'Peter', 'K', 'Cougan', '1999-08-18', 1, 2, 3, 'pb@b.com', 28181277, 1, 1, 1, 1, 1, 1, 1, 1, 122);
('123422289', 'c2919', '3292929', '281-21-2939', 'Peter', 'K', 'Cougan', '1999-03-18', 1, 2, 3, 'pbc@bd.com', 28181137, 1, 1, 1, 1, 1, 1, 1, 1, 22),
('123422389', 'c3919', '2292929', '283-23-2939', 'Keter', 'M', 'Pougan', '1999-02-28', 2, 3, 3, 'pbb@be.com', 28181127, 1, 1, 1, 1, 1, 1, 1, 1, 222),
('123422489', 'c4919', '1292929', '283-21-4939', 'Meter', 'Q', 'Sougan', '1999-01-30', 1, 4, 4, 'pba@bf.com', 28181117, 1, 1, 1, 1, 1, 1, 1, 1, 112);


INSERT INTO Employee VALUES
('5', 'br102', 'bbbb', '192-22-2222', 'Brian', 'Lee', 'Park', '2019-08-11', 1, 4, 1, 'cc@pp.com', 321232111, 300000, 2, 1, 11111, 22222, 2),
('21', 'va293', 'cccc', '182-22-1111', 'Trisha', null, 'Takanawa', '2011-01-11', 1, 3, 2, 'trisha@takanawa.com', 2818233, 200000,1, 2, 101010, 200200,3),
('12', 'cd12', 'dddd', '90-00-0000', 'Lee', 'K', 'Lee', '1999-01-11', 2, 2, 3, 'leek@gmail.com', 8182391, 191919, 2, 3, 202020, 303030,4),
('2', 'bb192', '292929', '283-11-2939', 'Sam', 'J', 'Zhou', '2017-08-18', 1, 1, 1, 'bb@b.com', 283818292, null, 1, 2, 5000, null, 1)
('3', 'sa12', 'eeee', '12-18-1922', 'Matthew', null, 'Stevenson', '1989-12-13', 2, 1, 4,'ms@gmail.com', 2817233, 271723, 1,4, 100000, 2000000,5);


INSERT INTO Course VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);


INSERT INTO CourseLevel VALUES
(1, 100),
(2, 200),
(3, 300),
(4, 400);


INSERT INTO Course_Information VALUES
(1, 'COOKING CLASS', 1, 3,'A Cooking class.', 3, 1, 101, 1),
(2, 'DANCING CLASS', 1, 2,'A Dancing class.', 3, 2, 102, 1),
(3, 'DRINKING CLASS', 1, 1,'A Drinking class.', 1, 3, 102, 2),
(4, 'SCIENCE CLASS', 1, 4,'A Science class.', 3, 4, 101, 4),
(5, 'PHYSICS CLASS', 1, 3, 'A Physics class.', 3, 5, 101, 4);

 

INSERT INTO Course_Prereqs VALUES
(1, null, null, null),
(2, 1, 1, null),
(3, null, null, null),
(4, null, null, 1),
(5, null, 1, null);


INSERT INTO Course_Schedule VALUES
(1, 1, '123456789', 1, 'S1', 1, '5', 1, 101, 69),
(2, 1, '123422789', 2, 'S2', 1, '12', 2, 102, 88),
(3, 1, '123456789', 3, 'S1', 2, '12', 3, 101, 90),
(4, 1, '123456789', 4, 'S3', 4, '5', 4, 102, 35),
(5, 1, '123456789', 5, 'S3', 4, '5', 5, 102, 40);



INSERT INTO CourseTime VALUES 
(1, 'Monday, Wednesday', '6:00 AM', '9:00 AM'),
(2, 'Friday, Saturday', '4:30 PM', '7:30 PM'),
(3, 'Monday, Saturday', '2:30 PM', '3:30 PM'),
(4, 'Friday', '4:10 PM', '3:55 PM'),
(5, 'Friday, Saturday', '1:30 PM', '2:30 PM');

INSERT INTO ClassroomType VALUES
('Classroom'),
('Auditorium'),
('Square'),
('Rooftop');

INSERT INTO Classroom VALUES
(101, 1, 1, 'R-191', 1, 25),
(102, 1, 2, 'R-202', 2, 100),
(103, 2, 3, 'P-377', 3, 20) 

INSERT INTO Building VALUES
(1, 'Rodgers Building', 1),
(2, 'Lina''s Dome', 4),
(3, 'Peter''s House', 3);

INSERT INTO Equipment VALUES
(1, 'Culinary Art Room, Video, Camera'),
(2, 'Dance Room, Video, Camera'),
(3, 'Chemistry, Flashlight, Ceiling'),
(4, 'Art Room, Art, Painting');





SELECT *
FROM Course_Schedule

INSERT INTO StudentRoster VALUES
('123456789'),
('123422789');

INSERT INTO Course_Enrollment VALUES
('123456789', 1, 1, 4, 98, 92),
('123456789', 2, 1, 1, 78, NULL),
('123422789', 4, 1, 1, 88, NULL),
('123422789', 3, 1, 3, NULL, NULL);

INSERT INTO StudentType VALUES
(1, 'Undergraduate'),
(2, 'Graduate'),
(3, 'PhD');

INSERT INTO StudentLevel VALUES
(1, 'Freshman'),
(2, 'Sophomore'),
(3, 'Junior'),
(4, 'Senior');

INSERT INTO Semester VALUES
(1, '2019', '2019-08-08', '2020-05-07'),
(2, '2020', '2020-08-02', '2021-05-09'),
(3, '2020', '2020-06-09', '2020-09-01');


INSERT INTO College VALUES
(1, 'ColgOfEng', 1, '12'),
(2, 'ColgofA&S', 2, '12'),
(3, 'Falk',3, '21'),
(4, 'Taylor', 4, '21');

INSERT INTO CourseDepartment VALUES
(1, 'English', '12', 5),
(2, 'ColgofA&S', '21', 2),
(3, 'Falk','5', 3),
(4, 'Taylor', '3', 4);


INSERT INTO HealthService VALUES
(1, 'Eye', 200, 10, 1, 0, 0),
(2, 'Reproductive Health', 1000, 100, 0,1,0),
(3, 'Crisis', 2020, 0, 0, 0, 1);

INSERT INTO HealthInsurance VALUES
(1, 200000, 230000, 1),
(2, 200000, 230000, 2),
(3, 200000, 230000, 3),
(4, 200000, 230000, 1);

INSERT INTO Benefit VALUES 
(1, 29182, 1),
(2, 192933, 2),
(3, 192929, 3),
(4, 291921, 4);

INSERT INTO Job VALUES
(1, 'Supervisor', 'To supervise everything'),
(2, 'Worker', 'An average worker who runs errands as needed.'),
(3, 'Liason', 'You lias'),
(4, 'English Professor', 'A person who teaches in English.');


INSERT INTO Major VALUES
(1, 'Computer Science', 122),
(2, 'Computer Engineering', 121),
(3, 'Finance', 133),
(4, 'Business', 145),
(5, 'Music', 149);

INSERT INTO Minor VALUES
(1, 'Math', 52),
(2, 'English', 58),
(3, 'Finance', 50),
(4, 'Business', 49),
(5, 'NFL', 49);


INSERT INTO Gender VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other')

INSERT INTO Race VALUES
(1, 'White'),
(2, 'Asian'),
(3, 'Black'),
(4, 'Latino'),
(5, 'MiddleEast');

INSERT INTO Ethnicity VALUES
(1, 'Chinese'),
(2, 'Korean'),
(3, 'Japanese'),
(4, 'Italian'),
(5, 'Irish'),
(6, 'Native Am');

INSERT INTO StudentStatus VALUES
(1, 'Enrolled'),
(2, 'Dropped'),
(3, 'Withdrawn'),
(4, 'Credited');

INSERT INTO Address VALUES
  (1, 12, 'Koew St', '2A', 1, null, 19282, 1),
  (2, 209, 'John St', null, 2, 2, 10005, 2),
  (3, 119, 'JohnDoe St', null, 1, 2, 10004, 2),
  (4, 29, 'JohnDoeDoe St', null, 1, 2, 10003, 2),
  (5, 21282, 'JohnDoeDoeDoe St', null, 1, 1, 10003, 1);

INSERT INTO City VALUES
(1, 'London'),
(2, 'New York'),
(3, 'Los Angeles'),
(4, 'San Francisco');

INSERT INTO States VALUES
(1, 'California'),
(2, 'New York'),
(3, 'Iowa'),
(4, 'Florida'),
(5, 'Scranton');

INSERT INTO Country VALUES
(1, 'UK'),
(2, 'USA'),
(3, 'China'),
(4, 'France'),
(5, 'Germany')

INSERT INTO SemesterType VALUES
(1, 'Fall'),
(2, 'Fall'),
(3, 'Summer');

SELECT *
FROM Student

INSERT INTO Membership VALUES
('2', '123456789', 1, 0)


SELECT *
FROM StudentStatus

SELECT * 
FROM StudentType