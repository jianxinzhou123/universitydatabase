USE CSE581projects

CREATE TABLE Course_Information (
CourseID INT NOT NULL PRIMARY KEY,
CourseTitle VARCHAR(50) NOT NULL,
refSemID INT NOT NULL REFERENCES Semester,
FOREIGN KEY(CourseID, refSemID) REFERENCES Course_Schedule,
CourseDepartment INT NOT NULL REFERENCES CourseDepartment,
CourseDescription VARCHAR(100) NOT NULL,
CreditHours INT NOT NULL,
Course_Prereqs INT NOT NULL REFERENCES Course_Prereqs,
Classroom INT NOT NULL REFERENCES Classroom
)

CREATE TABLE CourseLevel (
CourseLevelID INT NOT NULL PRIMARY KEY,
CourseLevel INT NOT NULL
)

CREATE TABLE EnrollmentStatus(
EnrollmentStatusID INT NOT NULL PRIMARY KEY,
EnrollmentStatus VARCHAR(10) NOT NULL
)

CREATE TABLE ClassroomType (
ClassRoomTypeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
ClassRoomTypeName VARCHAR(100) NOT NULL
)

CREATE TABLE Course_Enrollment(
StudentID VARCHAR(9) NOT NULL REFERENCES Student,
CourseID INT NOT NULL REFERENCES Course,
SemesterID INT NOT NULL REFERENCES Semester,
EnrollmentStatus INT NOT NULL REFERENCES EnrollmentStatus,
MidtermGrade INT,
FinalGrade INT
PRIMARY KEY(StudentID, CourseID, SemesterID)
)

DROP TABLE Course_Enrollment


ALTER TABLE Course_Prereqs
ADD ParentCourse INT REFERENCES Course
ADD ChildrenCourse INT REFERENCES Course



CREATE TABLE City (
CityID INT NOT NULL PRIMARY KEY,
CityName VARCHAR(50)
)

CREATE TABLE States (
StateID INT NOT NULL PRIMARY KEY,
StateName VARCHAR(50)
)

CREATE TABLE Country (
CountryID INT NOT NULL PRIMARY KEY,
CountryName VARCHAR(50)
)


CREATE TABLE Address (
AddressID INT NOT NULL PRIMARY KEY,
StreetNumber INT NOT NULL,
StreetName VARCHAR(50) NOT NULL,
Apartment VARCHAR(10),
CityName INT NOT NULL REFERENCES City,
StateName INT REFERENCES States,
ZipCode INT NOT NULL,
CountryName INT NOT NULL REFERENCES Country
)



CREATE TABLE Course (
CourseID INT NOT NULL PRIMARY KEY,
SemesterID INT REFERENCES Semester,
CourseInformation INT NOT NULL REFERENCES Course_Information,
FOREIGN KEY(CourseID, SemesterID) REFERENCES Course_Schedule
)

CREATE TABLE Course_Prereqs (
CourseID INT NOT NULL PRIMARY KEY,
RequiredCourseID INT
)

CREATE TABLE Semester (
SemesterID INT NOT NULL PRIMARY KEY,
YearofSemester INT NOT NULL,
BeginDate DATE NOT NULL,
EndDate DATE NOT NULL
)

CREATE TABLE SemesterType (
SemesterID INT NOT NULL PRIMARY KEY REFERENCES Semester,
SemesterInfo VARCHAR(1000) NOT NULL
)

CREATE TABLE CourseTime (
CourseID INT NOT NULL PRIMARY KEY,
Day_Of_Week VARCHAR(50) NOT NULL,
StartingtTime TIME NOT NULL,
EndingTime TIME NOT NULL
)

CREATE TABLE StudentStatus (
StatusID INT NOT NULL PRIMARY KEY,
CurrentStatus VARCHAR(50)
)

CREATE TABLE StudentType(
StudentTypeID INT NOT NULL PRIMARY KEY,
StudentType VARCHAR(50) NOT NULL
)


CREATE TABLE Major (
MajorID INT NOT NULL PRIMARY KEY,
MajorName VARCHAR(50) NOT NULL,
RequiredCreditToGraduate INT NOT NULL,
RequiredCourses INT NOT NULL
)

CREATE TABLE Minor (
MinorID INT NOT NULL PRIMARY KEY,
MinorName VARCHAR(50) NOT NULL,
RequiredCreditToGraduate INT NOT NULL,
RequiredCourses INT NOT NULL
)

CREATE TABLE College (
CollegeID INT NOT NULL PRIMARY KEY,
CollegeName VARCHAR(50) NOT NULL,
CollegeDepartments INT NOT NULL REFERENCES CourseDepartment,
CollegeDean VARCHAR(9) NOT NULL REFERENCES Employee
)

CREATE TABLE StudentLevel (
StudentLevelID INT NOT NULL PRIMARY KEY,
StudentLevelName VARCHAR(10) NOT NULL
)



CREATE TABLE Student (
SUID VARCHAR(9)  PRIMARY KEY, 
NetID VARCHAR(10),
PASSWORD VARCHAR(50),
SSN   VARCHAR(11) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
MiddleName  VARCHAR(50),
LastName VARCHAR(50) NOT NULL,    
DOB DATE NOT NULL,
GENDER INT NOT NULL REFERENCES Gender,
RACE INT NOT NULL REFERENCES Race,
ETHNICITY INT NOT NULL REFERENCES Ethnicity,
EMAIL VARCHAR(50) NOT NULL,
MAILING_ADDRESS INT NOT NULL REFERENCES Address,
CELLPHONE_NUM INT NOT NULL,
STUDENT_STATUS INT NOT NULL REFERENCES StudentStatus,
STUDENT_TYPE INT NOT NULL REFERENCES StudentType,
MAJOR INT NOT NULL REFERENCES Major,
MINOR INT REFERENCES Minor,
COLLEGE INT NOT NULL REFERENCES College,
STUDENT_LEVEL INT NOT NULL REFERENCES StudentLevel,
SEMESTER INT NOT NULL REFERENCES Semester,
)


CREATE TABLE StudentRoster (
StudentID VARCHAR(9) PRIMARY KEY REFERENCES Student
)

CREATE TABLE Course_Schedule (
CourseID INT NOT NULL,
CourseSemester INT NOT NULL REFERENCES Semester,
ListOfEnrolledStudents VARCHAR(9) REFERENCES StudentRoster,
CourseRegistrationNum INT NOT NULL,
CourseSection VARCHAR(50) NOT NULL,
CourseLevel INT NOT NULL,
Instructor VARCHAR(9) NOT NULL REFERENCES Employee,
CourseTime INT NOT NULL REFERENCES CourseTime,
Classroom INT NOT NULL REFERENCES Classroom,
ActualEnrollmentCount INT NOT NULL

PRIMARY KEY(CourseID, CourseSemester)
)

CREATE TABLE Job (
JobID INT NOT NULL PRIMARY KEY,
JobTitle VARCHAR(50) NOT NULL,
JobDescription VARCHAR(1000) NOT NULL
)

CREATE TABLE HealthService (
ServiceID INT NOT NULL PRIMARY KEY,
ServiceName VARCHAR(50),
ServiceFee INT,
ServiceCoPay INT,
ServiceFullCovered BIT,
ServicePartiallyCovered BIT,
ServiceNotCovered BIT
)

CREATE TABLE HealthInsurance (
HealthInsuranceID INT NOT NULL PRIMARY KEY,
EmployerPremium INT,
EmployeePremium INT,
ServicesCovered INT REFERENCES HealthService,
)

CREATE TABLE Benefit (
BenefitPackage INT NOT NULL PRIMARY KEY,
Fund401K INT,
HealthInsurance INT REFERENCES HealthInsurance
)

CREATE TABLE Gender (
GenderID INT NOT NULL PRIMARY KEY,
ProposedGender VARCHAR(10)
)

CREATE TABLE Race (
RaceID INT NOT NULL PRIMARY KEY,
ProposedRace VARCHAR(10)
)

CREATE TABLE Ethnicity(
Ethnicity INT NOT NULL PRIMARY KEY,
ProposedEthnicity VARCHAR(10)
)


CREATE TABLE Employee (
EmployeeID VARCHAR(9)  PRIMARY KEY, 
NetID VARCHAR(10),
PASSWORD VARCHAR(50),
SSN   VARCHAR(11) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
MiddleName  VARCHAR(50),
LastName VARCHAR(50) NOT NULL,    
DOB DATE NOT NULL,
GENDER INT NOT NULL REFERENCES Gender,
RACE INT NOT NULL REFERENCES Race,
ETHNICITY INT NOT NULL REFERENCES Ethnicity,
EMAIL VARCHAR(50) NOT NULL,
MAILING_ADDRESS INT NOT NULL REFERENCES Address,
CELLPHONE_NUM INT NOT NULL,
ANNUAL_SALARY INT,
BENEFIT INT NOT NULL REFERENCES Benefit,
JOB_INFO INT NOT NULL REFERENCES Job,
MINIMUM_PAY INT NOT NULL,
MAXIMUM_PAY INT
)

--ADD CONSTRAINT someC FOREIGN KEY (MAILING_ADDRESS) REFERENCES Address(AddressID)

CREATE TABLE CourseDepartment (
DepartmentID INT NOT NULL PRIMARY KEY,
DepartmentName VARCHAR(50) NOT NULL,
DepartmentChair VARCHAR(9) NOT NULL REFERENCES Employee,
DepartmentStaffCount INT
)

CREATE TABLE Equipment (
EquipmentID INT NOT NULL PRIMARY KEY,
EquipmentName VARCHAR(50) NOT NULL
)

CREATE TABLE Building (
BuildingID INT NOT NULL PRIMARY KEY,
BuildingName VARCHAR(50) NOT NULL,
Equipment INT REFERENCES Equipment
)

CREATE TABLE Classroom (
ClassroomID INT NOT NULL PRIMARY KEY,
Building INT NOT NULL REFERENCES Building,
FloorLevel INT,
RoomNum VARCHAR(10),
ClassroomType VARCHAR(10) NOT NULL,
RoomCapacity INT NOT NULL,
)


CREATE TABLE Membership (
EmployeeID VARCHAR(9),
StudentID VARCHAR(9),
isTA BIT NOT NULL,
isFaculty BIT NOT NULL,
PRIMARY KEY(EmployeeID, StudentID)
)

GRANT SELECT ON jzhou104.Address to yli41
GRANT SELECT ON jzhou104.Benefit to yli41
GRANT SELECT ON jzhou104.Building to yli41
GRANT SELECT ON jzhou104.City to yli41
GRANT SELECT ON jzhou104.Classroom to yli41
GRANT SELECT ON jzhou104.College to yli41
GRANT SELECT ON jzhou104.Country to yli41
GRANT SELECT ON jzhou104.Course to yli41
GRANT SELECT ON jzhou104.Course_Enrollment to yli41
GRANT SELECT ON jzhou104.Course_Information to yli41
GRANT SELECT ON jzhou104.Course_Prereqs to yli41
GRANT SELECT ON jzhou104.Course_Schedule to yli41
GRANT SELECT ON jzhou104.CourseDepartment to yli41
GRANT SELECT ON jzhou104.CourseLevel to yli41
GRANT SELECT ON jzhou104.CourseTime to yli41
GRANT SELECT ON jzhou104.Employee to yli41
GRANT SELECT ON jzhou104.EnrollmentStatus to yli41
GRANT SELECT ON jzhou104.Equipment to yli41
GRANT SELECT ON jzhou104.Ethnicity to yli41
GRANT SELECT ON jzhou104.Gender to yli41
GRANT SELECT ON jzhou104.HealthInsurance to yli41
GRANT SELECT ON jzhou104.HealthService to yli41
GRANT SELECT ON jzhou104.Job to yli41
GRANT SELECT ON jzhou104.Major to yli41
GRANT SELECT ON jzhou104.Membership to yli41
GRANT SELECT ON jzhou104.Minor to yli41
GRANT SELECT ON jzhou104.Race to yli41
GRANT SELECT ON jzhou104.Semester to yli41
GRANT SELECT ON jzhou104.SemesterType to yli41
GRANT SELECT ON jzhou104.States to yli41
GRANT SELECT ON jzhou104.Student to yli41
GRANT SELECT ON jzhou104.StudentLevel to yli41
GRANT SELECT ON jzhou104.StudentStatus to yli41
GRANT SELECT ON jzhou104.StudentType to yli41


































GRANT SELECT ON ALL TABLES IN jzhou104 TO USER yli41;








