
CREATE TABLE Teachers (
    TeacherId SERIAL PRIMARY KEY,
    TeacherFirstName VARCHAR(50) NOT NULL,
    TeacherLastName VARCHAR(50) NOT NULL,
    TeacherBirthDate DATE NOT NULL
);

CREATE TABLE Subjects (
    SubjectId SERIAL PRIMARY KEY,
    SubjectName VARCHAR(100) NOT NULL
	TeacherId int primary key,
	CONSTRAINT fk_teatcherid
		FOREIGN KEY (TeacherId)
		REFERENCES Teacher(TeacherId)
);
CREATE TABLE Groups (
	GroupsId serial,
    GroupId INT PRIMARY KEY,
    ClassId INT NOT NULL unique,
    CONSTRAINT fk_class
        FOREIGN KEY(ClassId) 
        REFERENCES Classes(ClassId)
);

 
CREATE TABLE Students (
    StudentId SERIAL PRIMARY KEY,
    StudentFirstName VARCHAR(50) NOT NULL,
    StudentLastName VARCHAR(50) NOT NULL,
    StudentBirthDate DATE NOT NULL,
    StudentClass VARCHAR(10) NOT NULL,
    GroupId INT primary key,
    CONSTRAINT fk_group
        FOREIGN KEY(GroupId) 
        REFERENCES Groups(GroupId)
);


CREATE TABLE GroupsHeader (
	GroupsHeadrerId serial,
    GroupsId INT PRIMARY KEY,
	SubjectId int PRIMARY KEY,
    CONSTRAINT fk_groups
        FOREIGN KEY(GroupsId) 
        REFERENCES Groups(GroupsId),
	CONSTRAINT fk_subject
        FOREIGN KEY(SubjectId) 
        REFERENCES Subjects(SubjectsId),
	
	
);





CREATE TABLE Classes (
    ClassId SERIAL PRIMARY KEY,
    SubjectId INT NOT NULL,
    TeacherId INT NOT NULL,
    CONSTRAINT fk_subject
        FOREIGN KEY(SubjectId) 
        REFERENCES Subjects(SubjectId),
    CONSTRAINT fk_teacher
        FOREIGN KEY(TeacherId) 
        REFERENCES Teachers(TeacherId)
);
