-- Basics are already done in the Apni Kaksha Notes of SQL, this will some add on to that!
-- Types of Databases : Relational and Non-Relational
-- Relational Databases : Where data is stored in form of a tables and rows and columns! and also a unique keys which identify each rows!
-- Non-Relational Databases : Any type of databases which are not relational, organizing data in anything except tabular form! and some of the example are : Key-value stores, Documents (JSON, XML etc), Graphs etc!

-- And now, SQL is a language that is used to manage the relational databases, using relational database management system! SQL interact with Relational DBMS and then RDBMS interact with that relational database!
-- Although SQL is used as a standardized language for all the RDBMS but still there are some modifications in SQL while using it for other RDBMS like PostgreSQL, Oracle, or others!

-- Some example of Non-RDBMS are : MongoDB, DynamoDB, Apache, Cassandra, Firebase etc!
-- Database Queries : Queries are the request made to the RDBMS to retrieve some specific information! as the DB structures becomes more complex, it becomes difficult to get the specific pieces of information we want! for example : Google Search is query for the Google's Database!

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
-- Tables and Keys!
-- Every table should have a primary key column, so that we can uniquely identify the rows!
-- Foreign Key we already know about!
-- Another is Composite Key, jahaa hum 2 or more columns ko primary key bnaade, and jisse a group of column milke kisi ek row ko uniquely identify kre! That is called a primary key!
-- Another is a candidate key, where hum kisi ek ya zyada rows ko uniquely identify kraate hai with the unique keyword constraint!

-- Difference between Candidate and Primary key! :
-- A Candidate key is a set of one or more column in a table that can uniquely identify a record! BUT Primary key is a specific candidate key that is uniquely identify each record in a table!
-- There can be multiple Candidate keys but only single primary key!
-- In Summary, all primary keys are candidate keys, but not all candidate key are a primary key!
-- The primary key is the selected candidate key that is used to uniquely identify records in a table. Other candidate keys, though not chosen as the primary key, still have the property of uniqueness and can be used to enforce uniqueness through unique constraints.
-- Candidate key unique hoti hai, aur Primary key unique and not-null dono hoti hai! So primary key is more restricted than candidate key! Also mtlb ki candidate key me jab data daaloge toh vo unique hoga, pr primary me agar data daaloge toh vo unique toh hoga uske saath not-null bhi hoga!

-- In SQL we have another keyword named as "Describe" which is used to describe table, but it is not that mostly used, rather than "Show" is used for the "Describe" purposes!
-- Talking about constraints, we have learnt various constraints in the apni kaksha tutorial, but now there are some more, one of them is "Default" where we give a column a default value, example :
CREATE DATABASE College2;
USE College2;
CREATE TABLE Student (
	id INT PRIMARY KEY,
    name varchar(30),
    major varchar(30) DEFAULT "Undecided", -- Yahaa humne default me major column ko undecided rakh diya hai, ki agar koi input nhi aaya major column me tab usko hum undecied maan lenge!
    marks int
);
DESCRIBE Student;
-- In the below columns, major vaala column me koi input nhi kr rahe hai inn dono students le liye, toh inn dono ke liye undecided show hoga, agar hum yahaa pr specify krde insert ke neeche ki hum koi major vaale column ke andar kuch insert krne vaale hai pr kuch insert na kre tab toh vo column khaali dikhayega and undecided likha hua nhi ayega! kyunki humne pehle likh diya ki hum kuch insert krne vaale, pr agar pehle hi insert ke neeche parenthesis me major vaale column ko na likhe, tab undecided dikayega!
INSERT INTO Student
(id, name, marks)
VALUES
(101, "Ram", 95),
(102, "Shyam", 90);
SELECT * FROM Student;

-- Another keyword that can be very useful is AUTO_INCREAMENT! isme kya hoga ki jaise hume id vaale column me baar baar id daalni padti hai, pr usko agar hum auto increament daalde toh vo khud uski value increase hoti rahegi!
CREATE TABLE Student3 (
	id INT AUTO_INCREMENT,
    Name VARCHAR(30),
    Major VARCHAR(30),
    Marks INT,
    PRIMARY KEY(id)
);
INSERT INTO Student3
(name, marks)
VALUES
("Mohan", 95),
("Rohan", 90);
SELECT * FROM Student3;
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
-- Wildcards in SQL!
-- Wildcards is a special character used to represent one or more other characters in a string. Wildcards are often used in conjunction with the LIKE operator in SQL queries to perform pattern matching in string comparisons.
-- The two primary wildcard characters used in SQL are the percent sign (%) and the underscore (_).

-- Percentage Sign (%) : The percent sign is used to represent zero or more characters. or can say in short "any number of characters!"
-- For Example : If you want to find all names that start with "J," you can use % as a wildcard, it will be like :
--			   : SELECT * FROM employees WHERE employee_name LIKE 'J%'; -> This query will return rows where employee name starts with letter "J". and here "J%" means first letter should be J and then any number of characters, but it should start with J!
--			   : Similarly, agar ye likha hota "%J%", then it means ki J ke pehle any number of characters and J ke baad any number of charcaters! and similarly agar "%J" likha hota tab iska mtlb hota ki J ke pehle any number of characters and last me J hona chahiye!
-- Underscore (_) : The Underscore sign is used to represent a single character, or in short "one character!"
-- For Example : If you want to find all four-letter names that start with "J" you can use four underscores, it will be like :
--			   : SELECT * FROM employees WHERE employee_name LIKE 'J _ _ _'; -> This query will return all rows where the employee_name starts with "J" and is followed by exactly three more characters. And here J _ _ _ means first letter should be J and then there should be only 3 characters after that!
--			   : Similarly, agar "_ _ _ J" likha hota toh mtlb hai ki J ke pehle 3 letters hone chahiye only and J should be the last letter of the string! ya agar aise likha hota "_ _ J _" meant ki J ke pehle 2 character hone chahiye and J ke baad 1 character hona chahiye only!
-- So that's how this Wildcards works!

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
-- While doing Union of two columns, they should have same datatypes!
-- Also while doing union, both the select statements should have same number of columns to unite!
-- for example :
-- The below syntax is valid!
	-- Select col1
	-- from table1
	-- union
	-- select col2
	-- from table2
-- But if we write something like this...
	-- Select col1, col2
	-- from table1
	-- union
	-- select col2
	-- from table2
-- Then this will be considered incorrect statement, bez both the select statements should have same number of columns for union!
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
-- "On Delete cascade" AND "On Delete set null" keywords!
-- Whenever we design a table schema, we put this keyword after foreign keys, like either of them, so that, agar kabhi ek agar primary table ya kisi table me se koi row ka data delete hota hai toh jis column me usse related cheeze thi vo bhi delete hojaye!
-- Like for example : Agar hum "On Delete Cascade" use krenge then agar parent table me se koi row delete hoti hai toh jiss table me uski foreign ki thi vo poori row delete hojayegi!
-- And agar hum "On Delete set null" use krenge tab parent table me se agar koi row delete hoti hai toh child table me sirf foreign key vaale column ka data delete hoga and uski jagah NULL likha aajayega!
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------> 
-- Triggers in SQL!
-- So triggers are the SQL Codes that automatically gets executed in response to a certain events on a particular table, it is used to maintain the inetgrity of the data!
-- Suppose koi employee hai jiska kaam hai jab bhi koi fresher company me aaye toh usko ek welcome email send krde, agar 2-3 freshers aa rhe hai toh koi dikkat nhi hai, ye kaam manually bhi ho jayega, pr agar 1000s of freshers aayenge toh sabko itne saare mails bhejna feasible nhi rahega! toh in this case we use triggers, jab bhi koi nayaa freshers ka name and id company ke database ke employee table me aayega, tab uss employee ek welcome email chlaa jayega triggers ke through! This is what the actual use of triggers!
-- Syntax of Triggers : CREATE TRIGGER trigger_name
-- 						( BEFORE | AFTER )
--						[ INSERT | UPDATE | DELETE ]
-- 						On [ table_name ]
--						[ FOR EACH ROW | FOR EACH COLUMN ] BEGIN
--						[ trigger_body ]
-- Example of use of Triggers :
-- Create a trigger table, and as humne upar ek student table banaya tha, so ab jab bhi koi new entry ayegi student table me ek then trigger will activate and trigger table jo humne banaya hai usme ye information update hojayegi ki ek nayaa student add hua hai student table me!
-- It will be done like :
-- Down here I have created a database called DBase to understand triggers!
CREATE DATABASE DBase;
USE Dbase;
CREATE TABLE Students (
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Subject VARCHAR(50)
);
INSERT INTO Students
(ID, Name, Marks, Subject)
VALUES
(101, "Ram", 95, "CSE"),
(102, "Shyam", 94, "MECH"),
(103, "Mohan", 93, "ECE"),
(104, "Rohan", 92, "EEE"),
(105, "Khushi", 91, "MED");
SELECT * FROM Students;
-- Now from here I will apply triggers into this!
-- First to store triggers value/message lets create a table...
CREATE TABLE Trigger_Table (
	Message VARCHAR(200)
);
-- Now I will create my trigger and I want is jab bhi koi nayi row Students table me aaye tab Trigger table me ek message likha aajaye ki added a new student! so for that we have to write the following code!
DELIMITER $$
CREATE TRIGGER Trigger1 -- yahaa pehle trigger ka naam aata hai
BEFORE INSERT
ON Students
FOR EACH ROW BEGIN
INSERT INTO Trigger_Table VALUES ("New Student Added"); -- The konsa table trigger ke actions pr kaam krega uss table ka naam!
END $$
DELIMITER ;
-- Now we will try to insert a new row in the students table and will check ki trigger table me ye cheez update hui ki students table me ek nayi row add hui hai!
INSERT INTO Students
(ID, Name, Marks, Subject)
VALUES
(106, "Vanna", 90, "Pharma");
-- Now we will check in the trigger table...
SELECT * FROM Trigger_Table; -- And as we can see that in the trigger table "New Student Added" likha hua aagya, and as we will keep inserting new students, this trigger table will also get updated!
-- In the above trigger syntax we have used delimiters, becoz line termination and whole code terminate kahaa ho rha hai ptaa chale! like delimiter humne pehle set krdiya $$ taki ye ptaa chale ki end tak ye poora whole code hai trigger ka and uske baad vapis delimiter ko set krdiya ;
-- se! basically yhi reason tha, ab now dont get deep into it, its not worth! its just syntax ke kaaran ye delimiter use krna padaa kyunki insert vaali line me bhi line terminate ho rhi thi, ab mysql confuse na hojaye ki insert vaali line pr terminate ho rhe hai instruction ya end pr,
-- isliye dono alag alag use krliya, insert vaali line me use krna hi tha, toh final delimiter change krdiya "DELIMITER" se! bss now dont get deep into, its not worth!

-- Here I am creating another trigger and trigger table, a bit more advance and useful way!
CREATE TABLE Trigger_Table2 (
	Message VARCHAR(200)
);
DELIMITER $$
CREATE TRIGGER Trigger2
BEFORE INSERT
ON Students
FOR EACH ROW BEGIN
	IF NEW.Marks >= 95 THEN
		INSERT INTO Trigger_Table2 VALUES ("Added a topper student");
	ELSEIF NEW.Marks < 95 THEN
		INSERT INTO Trigger_Table2 VALUES ("Added an average student");
	ELSE
		INSERT INTO Trigger_Table2 VALUES ("Added a new student");
	END IF;
END $$
DELIMITER ;
INSERT INTO Students
(ID, Name, Marks, Subject)
VALUES
(107, "Vanna", 90, "Pharma");
SELECT * FROM Trigger_Table2;
-- Hence here I added some conditions where when and how the the trigger will activate and how it will update the trigger table using if else!
-- Now there are some more commands like dropping the trigger! 
-- It is "DROP TRIGGER IF EXIST "Trigger_Name"; or "DROP TRIGGER "Trigger_Name";

-- Now this trigger has some new and bit advance feaature as shown...
CREATE TABLE Trigger_Table3 (
	Message VARCHAR(200)
);
DELIMITER $$
CREATE TRIGGER Trigger3
BEFORE INSERT
ON Students
FOR EACH ROW BEGIN
INSERT INTO Trigger_Table3 VALUES (CONCAT(NEW.Name, " is added", " and his/her ID is ", NEW.ID));
END $$
-- Now I will try to insert a new row in the students table and now see how the updation will happen in the trigger table!
INSERT INTO Students
(ID, Name, Marks, Subject)
VALUES
(109, "Palak", 96, "AI/ML");
-- Now we will display that table! using "Select * from Trigger_Table3;" this command!

-- ER Diagram Intro, Designing of ER Diagram and Converting ER Diagram to Database Schema is done in the notebook, kindly refer that for remaining topics!

-- X --------------------------------------------------------- FreeCodeCamp Course of SQL Complete --------------------------------------------------------------------------------------------------- X