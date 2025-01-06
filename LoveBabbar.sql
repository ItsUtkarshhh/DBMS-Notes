-- ----------------------------------------------------------------------- Lecture 1 : What is DBMS --------------------------------------------------------------------------------------------------->
-- What is Data?
-- Data is a collection of raw, unorganized facts and details like text, observations, figures, symbols, and descriptions of things etc. Data ka koi khud ka meaning nhi hota until hum kuch add na kre! it is just some bits and bytes stored in the memory!
-- In other words, data does not carry any specific purpose and has no significance by itself.
-- Then jab hum like kuch given data ko kuch names se specify kr dete hai na like ki ye column of the data is representing age this one is sex, this one is name, then hum kuch ek meaningful information nikal paate hai data se! otherwise they are just some raw data stored in the memory locations!

-- So jab data ko process kiya jayega toh information nikali jaa sakti hai!
-- Now what is information : Info. Is processed, organized, and structured data. It provides context of the data and enables decision making. Processed data that make sense to us. Information is extracted from the data, by analyzing and interpreting pieces of data.
-- All the big tech companies relies on data to grow there businesses, as data is from where they retrieve information ki jo unka product hai kon log pasand kr rhe hai kya nhi and konse type ke log pasand kr rhe hai ek particular product and all, this is the information is being extracted from the data after processing over it!
-- So data is the raw material and it is called the new oil!

-- Now there are two types of data, Quantitative and Qualitative :
-- Quantitative data means the numerical data.
-- Qualitative data means like descriptive but non-numerical, like name, gender, hair color of a person.

-- Data vs Information :
-- Data is a collection of facts, while information puts those facts into context.
-- While data is raw and unorganized, information is organized.
-- Data points are individual and sometimes unrelated. Information maps out that data to provide a big-picture view of how it all fits together.
-- Data does not depend on information, however information depends on data.
-- Data isn’t sufficient for decision-making, but you can make decisions based on information.

-- Suppose do log hai P1 and P2 and they both opening a restraunt, and both are selling 10 dishes, jisme se one is just selling without keeping the track of the data, on the other hand P2 is collecting data and extracting info from it, like agar usko dikh rha hai ki konsi dishes zyada bik rhi ha toh vo baaki remaining dishes ke liye raw material layega hi nhi isse uski cost bachegi and P2 will earn more wheras P1 is just selling and P1 has no idea of how to grow his business! so that how data is used!

-- What is Database?
-- Database is an electronic place/system where data is stored in a way that it can be easily accessed, managed, and updated.
-- To make real use Data, we need Database management systems. (DBMS)

-- DBMS : A database-management system (DBMS) is a collection of interrelated data and a set of programs to access those data. The collection of data, usually referred to as the database, contains information relevant to an enterprise. The primary goal of a DBMS is to provide a way to store and retrieve database information that is both convenient and efficient.
-- A DBMS is the database itself, along with all the software and functionality. It is used to perform different operations, like addition, access, updating, and deletion of the data.

-- Why things are being made more complex, like we know we have File Systems, then why DBMS?? Reason :
-- What are File Systems : File systems are used to store, organize, and retrieve data in a computer. They work by managing files and directories on storage devices like hard drives. Examples are NTFS, FAT32, and ext4.
--                       : Limitations : While they are great for simple tasks (like saving and retrieving files), they lack the advanced features needed for complex data management, like ensuring consistency, handling multiple users, or running complex queries efficiently.

-- Why DBMS Over File Systems?
-- DBMS (Database Management System) is designed to overcome the challenges faced with file systems. Let's go over the specific problems :
-- Data Redundancy and Inconsistency : Problem : In file systems, the same data might get stored in multiple files (redundancy). For example, a bank customer has a savings account and a current account, and their information is stored in two separate files. If they change their address in the savings account but not in the current account, the data becomes inconsistent.
--                                   : Solution : DBMS allows centralized data storage and eliminates redundancy by ensuring all data is updated in one place.

-- Difficulty in Accessing Data : Problem : Retrieving specific data in file systems often requires custom programs. For instance, finding all customers in a specific postal code requires a programmer to write a code that scans all rows and matches the postal code its a time-consuming process.
--                              : Solution : SQL queries like SELECT * FROM customers WHERE postal_code = '1001'; make it fast and efficient to retrieve data.

-- Data Isolation : Problem : Different programmers might store data in different formats (e.g., .txt, .dat), leading to difficulties when trying to retrieve or combine data.
--                : Solution : DBMS stores data in a consistent format, making access uniform and straightforward.

-- Integrity Constraints : Problem : File systems don't have built-in checks to enforce rules (integrity constraints). For example, a bank might limit withdrawals to ₹2,00,000, but changing this limit across multiple files requires manual effort and is error-prone.
--                       : Solution : Integrity rules can be defined in DBMS. For example, you can set constraints like WITHDRAW_LIMIT <= 200000 and update them easily when policies change.

-- Atomicity Problems : Problem : Atomicity ensures that a transaction is fully completed or not at all. For instance, when transferring money, the debit and credit operations must both succeed. In file systems, if the debit happens but the credit fails (e.g., due to a crash), data gets corrupted.
--                    : Solution : DBMS ensures transactions are atomic. If one part fails, the entire transaction is rolled back automatically.

-- Concurrent Access Anomalies : Problem : When multiple users access or modify data at the same time, conflicts can arise in file systems. For example, if two people try to withdraw from the same account simultaneously, the balance might become inconsistent.
--                             : Solution : DBMS uses locking mechanisms and transactions to handle concurrent access safely.

-- Security Problems : Problem : File systems lack fine-grained access control. Limiting access to certain files or parts of data (e.g., salary data only visible to HR) requires extra programming.
--                   : Solution : DBMS provides built-in security features, such as roles and permissions. For example, only authorized users can execute certain queries.

-- So, hence why choose DBMS : With DBMS, you replace hundreds of lines of code with simple queries and built-in features. This improves efficiency, reduces errors, and makes systems easier to maintain. It’s especially important for handling complex, large-scale applications like banking, where consistency, security, and quick access are critical.
-- Now we can do the above thing with File Systems as well but the amount of data is growing now, so itna feasible nhi hoga File Systems use krna so yes ek nayi system ki zarurat thi and that is fullfilled by DBMS!

-- ----------------------------------------------------------------------- Lecture 2 : DBMS Architecture --------------------------------------------------------------------------------------------------->
-- Abstraction is like driving a car – you only need to know a few things like the accelerator, brake, clutch, and gear to drive. You don’t need to understand the inner workings of how these components function. Similarly, in a DBMS (Database Management System), abstraction helps simplify access to a complex database by providing only the relevant data to each user, based on their needs.
-- For example, in a company like Amazon, the database holds various types of customer data (e.g., name, ID, address, phone number, purchase history).
-- Different teams need different subsets of this data : Logistics team only needs customer name, ID, address, and phone number. Customer service team needs customer details plus purchase information.
-- In this way, DBMS provides an abstract view of the database to different users, ensuring they only access the data that is relevant to their role.

-- Instance of DB : Refers to the collection of data stored in the database at a specific moment.
-- The three-schema architecture in DBMS aims to provide users with an abstract view of the data, hiding the details of how data is stored and maintained. It simplifies user interaction by applying multiple levels of abstraction. The main goal is to allow multiple users to access the same data, each with a personalized view, while storing the actual data only once.

-- Three Layers of DBMS Architecture :
-- Physical/Internal Level : Lowest level of abstraction, dealing with how data is physically stored. Data is stored in the form of bits and bytes, and low-level data structures (e.g., N-ary tree) are used.
--                         : It covers storage allocation, data compression, and encryption. 
--                         : Goal : Define algorithms for efficient data access.
--                         : Example : Viewing physical schema with SHOW TABLE STATUS; gives details about the low-level data storage for the tables in the database.

-- Logical/Conceptual Level : Describes how physically stored data is logically represented and what it means. Maps physical data into a logical format (e.g., mapping raw data to understandable structures like names, addresses, etc.).
--                          : The conceptual schema defines the logical design of the database, including what data is stored and the relationships between them.
--                          : Goal : Make the system easy to use and understand.
--                          : Example : Viewing logical schema with SHOW Table_name; displays the database table’s logical structure.

-- View/External Level : The highest level of abstraction, designed to simplify user interaction. 
--                     : Provides different views of the database to different user groups based on their needs. Each view schema describes a subset of the data relevant to a specific user.
--                     : Acts as a security mechanism, hiding certain parts of the database from unauthorized users.
--                     : Goal : Tailor the database view to user requirements and enhance security.
--                     : Example : To view the view level schema, a view must first be created, then you can access it.

-- Schema in DBMS : A schema is a blueprint or design of the database that defines its structure. It is a collection of logical definitions and constraints that specify how data is organized and related.
-- Just like abstraction, there are also three types of schemas that correspond to the different levels of abstraction :
-- Physical schema : This schema corresponds to the physical level of abstraction.
--                 : It defines how the data is actually stored in the database (e.g., how the data is represented in files, indexes, storage, etc.). This schema is typically managed by the DBMS and is not visible to most end users.

-- Conceptual schema : This schema corresponds to the logical (conceptual) level of abstraction.
--                   : It provides a high-level description of the database's structure, including the relationships between entities, constraints, and other logical aspects of the data. This schema is independent of the physical storage of data and provides a unified view of the entire database, which is accessible to the DBA and developers.

-- View schema : This schema corresponds to the view level of abstraction.
--             : It defines how the data should appear to the user or an application, based on specific needs or requirements. Different views of the same database can be created for different users, showing different subsets or representations of the data.

-- How Level of Abstraction and Schemas work together! and are they same or different :
-- No, abstraction and schema are not the same, but they are closely related!
-- Abstraction is a broader concept that deals with hiding complexity at different levels (physical, logical, and view).
-- Schema refers to the structure and design of the database at each of these abstraction levels.
-- Every Level of Abstraction has its own Schema! In short, Physical Level Abstraction is about how data is stored in the memory! and Physical Schema is just schema or way to store those low level detail! Its something like that only!

-- Difference Between Schema and Table :
-- Schema : A logical structure organizing and grouping database objects.
--        : Provides a blueprint or container for database objects like tables, views, and procedures.
--        : Higher level of abstraction, representing the overall organization of database objects.
--        : Helps in organizing and managing database objects for different purposes.

-- Table : A data structure within a schema storing actual data.
--       : Stores and manipulates actual data in rows and columns.
--       : Lower level of abstraction, representing individual entities or datasets.
--       : Allows users to query, insert, update, or delete records.

-- Features of DB Schema : Attributes of the table.
--                       : Consistency Constraints, Like there are some conditions jo hum kuch attributes pr lgaate hai! like kisi student table me koi aisa student nhi ho sakta jiska koi name ya roll number na ho! and similar se contraints aur bhi ho sakte hai, overall vahi ki kuch conditions lagi hongi kuch attributes pr!
--                       : Relationships! Like there are some relationships! like ek student table hai toh uss student ne kis kis course me apply kiya hua hai! uske liye courses ki ek alag table hoti hai toh uss course ki table and student table me relationship btata hai ye!

-- Data Models : Provides a way to describe the design of a DB at logical level.
--             : Underlying the structure of the DB is the Data Model, a collection of conceptual tools for describing data, data relationships, data semantics & consistency constraints.
--             : E.g., ER model, Relational Model, object-oriented model, object-relational data model, Network Model and Hierarchial Model etc.

-- Database Laguages : Jaise normal programming me hum kuch languages seekhte hai toh just similarly yahaa bhi hum DBMS ko access ya use krne ke liye hume kuch langages seekhni hoti hai, and there are multiple of them like DDL, DML, DCL and more, but here we will study about two, that is DDL(Data Definition Language) and DML (Data Manipuation Language)
--                   : Data definition language (DDL) to specify the database schema.
--                   : Data manipulation language (DML) to express database queries and updates.
--                   : Practically, ye dono lang koi alag nhi hoti hai rather both language features are present in a single DB language, eg :- SQL language.
--                   : DDL : We specify consistency constraints, which must be checked, every time DB is updated.
--                   : DML : Data manipulation involves : Retrieval, Insertion, Deletion and Updation of information stored in DB.
--                   : DQL : Query language, a part of DML to specify statement requesting the retrieval of information.

-- Now the question is that, How Database accessed from Application Program : To understand how an application (written in languages like C, C++, Java, etc.) interacts with a database (like SQL databases), we need to focus on database connectivity using APIs (Application Programming Interfaces). This is crucial because applications and databases are developed in different systems or languages, and APIs help bridge that gap.
-- When we write an app in programming languages such as Java or C++, the instructions or commands are specific to that language. But databases like SQL use SQL queries to interact with data. So, the question arises: how can an application in one language (like Java or C++) communicate with a database that understands SQL?
-- The answer lies in APIs such as: JDBC (Java Database Connectivity) for Java applications
--                                : ODBC (Open Database Connectivity) for C and C++ applications
--                                : These APIs act as a translator between the application and the database, converting language-specific commands into SQL queries, sending them to the database, and then retrieving the results.

-- Step 1: Application Sends a Request
-- When an application (let's say written in Java) needs to access or modify data in a database, it sends a request. This request could be anything, like:
-- 1) Fetching data (using SQL SELECT queries)
-- 2) Inserting new records (using SQL INSERT queries)
-- 3) Updating existing records (using SQL UPDATE queries)
-- 4) Example Scenario : You have a Java application where a user fills out a form to add new customer data to a database. In the background, the app will need to communicate with the database to save this information.

-- Step 2: JDBC/ODBC Interfaces as Middlemen
-- Here, the API comes into play. Let's assume the app is written in Java, so the API we'll use is JDBC (Java Database Connectivity).
-- 1) JDBC takes the Java commands or requests from the app.
-- 2) It then translates these commands into SQL queries that the database can understand.
-- For example, the user input for adding a new customer could be in the form of Java data structures. JDBC converts this data into an SQL INSERT query that can be executed on the database.
-- Similarly, for C or C++ applications, ODBC (Open Database Connectivity) does the same job. ODBC is a more general API that works across multiple languages.

-- Step 3: API Sends the SQL Query to the Database
-- After translating the commands into SQL, JDBC/ODBC acts as a connector between the application and the database. The SQL query is sent to the database (for example, a MySQL or PostgreSQL database).
-- Example : If the user enters customer details in the Java app, JDBC might generate an SQL query like : "INSERT INTO customers (name, email, address) VALUES ('John Doe', 'john@example.com', '123 Street');

-- Step 4: Database Executes the Query
-- Once the database receives the SQL query, it processes it. Depending on the type of query (like SELECT, INSERT, UPDATE, or DELETE), the database will :
-- 1) Retrieve the requested data (for SELECT queries)
-- 2) Insert or update records (for INSERT or UPDATE queries)
-- 3) Delete records (for DELETE queries)
-- The database performs the actual operations on the data stored in it.

-- Step 6: JDBC/ODBC Converts the Response
-- Once the API receives the response from the database, it translates the response from SQL to the programming language format (Java, C++, etc.).
-- For example, if the database sends back customer data after a SELECT query, JDBC converts it into Java objects or arrays that the application can use.

-- Step 7: Application Receives and Processes the Response
-- Finally, the application receives the response from the API, and the data can now be displayed or further processed. In our example of adding a new customer, once the database confirms the insertion, the Java app may display a success message to the user.

-- Database Administrator is a person who has central control of both the data and the programs that access those data.
-- Functions of DBA : Schema Definition, Storage structure and access methods, Authorization control, Schema and physical organization modifications, Routine maintenance like Periodic backups and
--                  : Security patches like jo data jo stored hai vo secure toh hai na ye toh nhi na ki koi kisi malware ya kisi illegal way se uss data ko access kr paa rha hai, Any upgrades, like koi cheez ya attribute ya koi column ya kuch bhi change ya upgrade krna hai agar DB me toh vo kaam bhi DBA ka hi hota hai.

-- DBMS Application Architecture : Aapki jo machine hai vo database se kaise communicate kregi and kis level pr communicate kregi! that is defined by the DBMS App Architecture!
-- Now there are two terms one is Client Machine and another is Server Machine!
-- Client Machine : Jispe ek end user baith ke DB se data retrieve krta hai jaise humlog jo youtube vdos dekhte hai vo hum YT ke DB se data retrieve krke dekh paate hai!
-- Server Machine : Jahaa pr actual DBMS run kr rha hai!

-- Now, these Client and Server works on 3 Tiers, which is called 3-Tier Architecture in DBMS :
-- Tier 1 Architecture : All three components (Client, Database, and Server) are on the same machine.
--                     : Example : Localhost setup for web apps where the client, server, and DB reside on a single system.
--                     : Common in development or small-scale applications.

-- Tier 2 Architecture : Client and App are on one machine, while Server with Database is on a remote machine.
--                     : Communication happens through JDBC/ODBC API standards. Client sends SQL queries to the server to retrieve data directly.
--                     : Key Point : Client handles app and query logic, while the server manages DB functionality.

-- Tier 3 Architecture : Used for large-scale applications with three logical components : Client Machine, App Server, and DB Server.
--                     : How It Works : Client communicates with the App Server (middle layer). App Server communicates with the DB Server. Results flow back from DB to App Server, then to the client.
--                     : Advantages : Scalability, Data Integrity and Security! Best suited for WWW Applications.

-- Now, see overall, There are multiple Architectures in Softwares which are called Software Architecture!
-- There are multiple Software Architectures, like : Monolithic Architecture : All parts of the application (frontend, backend, database, etc.) are built as a single unit and work closely together. and If you change one part, you often need to test and redeploy the whole application. Example : E-Commerce Website.
--                                                 : Microservices Architecture : The application is split into smaller, independent services, each responsible for one function (e.g., user login, catalog search, or payment). and Each service can run and be deployed separately. Services communicate with each other through APIs. Example : Amazon and Netflix.
--                                                 : Event-Driven Architecture : Components communicate by sending events to each other. An event is a signal that something happened (e.g., a user clicked a button). One component creates an event, and others listen for it and respond accordingly. Example : Banking Systems and E-Commerce.
--                                                 : Serverless Architecture : Applications run on the cloud, and you don’t need to worry about managing servers or infrastructure. And You write code in smaller pieces (called functions), and the cloud provider handles running it. Example : Chatbots and Image Processing Systems.
--                                                 : Layered Architecture : The application is divided into layers, where each layer has a specific role. and Layers interact only with the layers directly above or below them. Layers are : Presentation Layer, Business Logic Layer and Data Access layer! Example : Banking Systems and CRMs.
--                                                 : Distributed Architecture : Distributed Architecture is a type of software architecture where the system is divided into multiple components or nodes that are distributed across different machines or locations. These components work together to provide the functionality of the application, often communicating over a network. Example : Netflix and Uber!

-- 1/2/3 Tier Architectures are also a type of Software Architectures... overall there are multiple architectures for different types of use cases! We decide first that what we want to design and create... according to our use case and goals we choose multiple architecture or one... depends on what we want to do... So yes that's how it works!
-- So it all depends on use cases!... For now understand this ki tumko koi badaa software abhi nhi banana, you just need to have a brief idea about different architectures and how and where they can be used for different types of tasks!
-- but specific to Databases Management Systems, there are DBMS Architectures!

-- If a DBMS follows a ER or Relational Data model then it is a RDBMS, and if a DBMS follows other Data Models like object relation, key value pairs and all then it is a NRDBMS!
-- So, which Data Model you will be using will depend on the type of DBMS you are using! every DBMS works on a particular Data Model!

-- So lets say for a software you want a particular data model! then in that you should be choosing a particular DBMS which works on that particular Data Model!
-- Relational and ER Data Model are used by : MySQL, SQL Server, PostgreSQL and Oracle and more... (ER Data Model is just a visual representation of Relational Data Model, and relational model is implemented by DBMSs like MySQL, SQL Server, and all so it indirectly implements ER Model also!)
-- Document Based Data Model is used by : MongoDB
-- Key Value Pairs Data Model is used by : Redis
-- Network Data Model is early data model which was used by : TurboIMAGE
-- And similarly different Data Models uses different DBMSs, or should say that different DBMSs are made based on different Data Models.

-- ----------------------------------------------------------------------- Lecture 3 : ER Models Explained --------------------------------------------------------------------------------------------------->
-- Data models works at the conceptual layer!
-- And even the DBA also works at the conceptual/logical level/layer!
-- Data Model : Collection of conceptual tools for describing data, data relationships, data semantics, and consistency constraints.
-- And aisa hi ek model hai ER model, which is Entity Relationship Model, jo alag alag entities ke beech me kya relation hai vo batata hai!
-- ER Model : It is a high level data model based on a perception of a real world that consists of a collection of basic objects, called entities and of relationships among these objects.
--          : Graphical representation of ER Model is ER diagram, which acts as a blueprint of DB.

-- What is an Entity : An Entity is a “thing” or “object” in the real world that is distinguishable from all other objects.
--                   : They have a physical existence. for eg - Each student in a college is an entity.
--                   : Entity can be uniquely identified. (By a primary attribute, aka Primary Key)
--                   : Now every entity has some attributes and those attributes are those things which defines and describe the data present in that entity.
--                   : Now there are two types of entity : Strong Entity : Those which can be uniquely identified.
--                                                       : Weak Entity : It doesn’t have sufficient attributes, to select a uniquely identifiable attribute. Loan -> Strong Entity, Payment -> Weak, as installments are sequential number counter can be generated separate for each loan.
--                   : Weak entity depends on strong entity for existence.

-- Entity Set : Jab humare paas bhot saare entities ho of same type, then unn sab entities ko ek set bnaa dete hai tab usko hum ek entity set kehte hai!
--            : It is a set of entities of the same type that share the same properties, or attributes.
--            : Eg - Student is an entity set, Customer of a bank.
--            : Entity set and table are not same things, entity set is like in case of students, entity set is the whole group of students! but the table is a structured way of storing information about that every single instance of that entity! overall, the entity set is the idea of a group, and the table is the way we organize and store information about each member of that group in a database.

-- Attributes : Kisi bhi entity ko describe krne ke liye jo properties hoti hai usko hum attributes kehte hai!
--            : An entity is represented by a set of attributes.
--            : Each entity has a value for each of its attributes.
--            : For each attribute, there is a set of permitted values, called the domain, or value set, of that attribute.
--            : Eg - Student Entity has following attributes, Name, Standard, Course, Batch, Contact number, Address.

-- Types of Attributes : Simple : Attributes which can’t be divided further.
--                              : Eg - Customer’s account number in a bank, Student’s Roll number etc.
--                     : Composite : Can be divided into subparts (that is, other attributes).
--                                 : Eg - Name of a person, can be divided into first-name, middle-name, last-name.
--                                 : If user wants to refer to an entire attribute or to only a component of the attribute.
--                                 : Address can also be divided, street, city, state, PIN code.
--                                 : Fayeda kya hai iska? ye hai ki agar hum sab major details ko alag alag attributes me store krenge toh hume maanlo in future koi aisa data chahiye sirf unn logo ka jo kisi particular city me rehte hai toh tab hum seedha unn particular state ya city ke liye query krke nikal sakte hai!
--                     : Single-Valued : Only one value attribute.
--                                     : Eg - Student ID, loan-number for a loan.
--                     : Multi-Valued : Attribute having more than one value.
--                                    : Eg - phone-number, nominee-name on some insurance, dependent-name etc.
--                                    : Limit constraint may be applied, upper or lower limits.
--                     : Derived : Value of this type of attribute can be derived from the value of other related attributes.
--                               : An attribute takes a null value when an entity does not have a value for it.
--                               : Eg - Age, loan-age, membership-period etc. and it is represented as dotted ellipse.
--                     : Null : An attribute takes a null value when an entity does not have a value for it.
--                            : It may indicate “not applicable”, value doesn’t exist. e.g., person having no middle-name
--                            : It may indicate “unknown”, Unknown can indicate missing entry, e.g., name value of a customer is NULL, means it is missing as name must have some value. Not known, salary attribute value of an employee is null, means it is not known yet.

-- Relationships : Association among two or more entities. Do entities kaise aapas me related hai, like maanlo ki ek entity hai loan and ek entity hai customer, so customer and loan me kya relation hoga? that will be customer borrows loan, toh yahaa inn dono me borrow ka relation hai, and relationship ko diagram me diamond shape se show kiya jaata hai!
--               : Strong Relationship : between two independent entities.
--               : Weak Relationship : between weak entity and its owner/strong entity.
--               : Degree of Relationship : Number of entities participating in a relationship.
--                                        : Unary, Only one entity participates. e.g., Employee manages employee.
--                                        : Binary, two entities participates. e.g., Student takes Course.
--                                        : Ternary relationship, three entities participates. E.g, Employee works-on branch, employee works-on job.
--                                        : Binary are common.

-- Now ab dekho jo attributes hote hai, unke kuch constraints bhi hote hai, like as we have seen earlier ki like kisi student ke database me kisi student ke attribute me student name vaala attribute kabhi bhi null nhi ho sakta! ya even student ID bhi, vo toh humesha unique hogi, also like mai ek aisa constraint lgaa sakta hoon ki jaise kisi customer ka name numeric nhi ho sakta

-- Relationship Constraints : They are of two types, Mapping Cardinality and another is Participation Constraints.

-- Mapping Cardinality : Number of entities to which another entity can be associated via a relationship.
--                     : One to One : Entity in A associates with at most one entity in B, where A & B are entity sets. And an entity of B is associated with at most one entity of A. Eg - Citizen has Aadhar Card.
--                     : One to Many : Entity in A associated with N entity in B. While entity in B is associated with at most one entity in A. Eg - Citizen has Vehicle.
--                     : Many to One : Entity in A associated with at most one entity in B. While entity in B can be associated with N entity in A.
--                     : Many to Many : Entity in A associated with N entity in B. While entity in B also associated with N entity in A. Eg - Customer buys product, Student attend course etc.

-- Participation Constraints : Aka, Minimum cardinality constraint.
--                           : There are two types of participation constraints, Partial Participation and Total Participation!
--                           : Partial Constraints : Not all entities are involved in the relationship instance. Denoted with single line.
--                           : Total Participation : Each entity must be involved in at least one relationship instance. saari ki saari entities uss entity set ki atleast ek relation instance se judi hongi! Denoted with double line.
--                           : Customer borrow loan, loan has total participation as it can’t exist without customer entity. And customer has partial participation.
--                           : Weak entity has total participation constraint, but strong may not have total.

-- For ER Diagram Notations, refer the notes!

-- ----------------------------------------------------------------------- Lecture 4 : Extended ER Features --------------------------------------------------------------------------------------------------->
-- Speciallization : Specialization is a top-down approach in the ER model where a generalized entity is divided into more specific sub-entities based on their distinct features, functionalities, or attributes. It establishes an "is-a" relationship between a parent (superclass) and its sub-entities (subclasses).
-- Key Points : Purpose : To avoid redundancy in the database design.
--                      : To assign attributes specific to certain sub-entities.
--                      : To refine and clarify the database schema.
--            : How It Works : A generalized entity (e.g., Person) is split into sub-entities (Example : Customer, Employee).
--                           : Common attributes (e.g., Name, Address) remain in the parent entity.
--                           : Specific attributes (e.g., Salary for Employee, Customer ID for Customer) are assigned to sub-entities.
--            : Examples : Person -> Divided into Customer and Employee. Employee may further specialize into HR, Developer, Housekeeper. Person is the superclass, while Customer and Employee are subclasses.
--            : Advantages : Eliminates ambiguity by clearly associating attributes with relevant entities.
--                         : Helps group entities with distinctive features for better database organization.
--            : Depiction : Represented using a triangle symbol in an ER diagram.
--                        : Subclasses inherit attributes and relationships from the superclass.

-- Generalization : Generalization is a bottom-up approach in the ER model where multiple specific entities are combined into a generalized entity based on their shared attributes. It establishes an "is-a" relationship between subclasses and the superclass.
-- Key Points : Purpose : To simplify the database design.
--                      : To avoid data redundancy by grouping common attributes in a generalized entity.
--            : How It Works : Specific entities (e.g., Car, Jeep, Bus) are merged into a generalized entity (e.g., Vehicle).
--                           : Common attributes are moved to the superclass, while unique attributes remain in subclasses.
--            : Examples : Car, Jeep, Bus -> Generalized into Vehicle.
--                       : Vehicle becomes the superclass, and Car, Jeep, and Bus are the subclasses.
--            : Advantages : Reduces redundancy by consolidating common attributes.
--                         : Simplifies and refines the database structure.
--            : Depiction : Represented using a triangle symbol in an ER diagram.
--                        : Subclasses inherit attributes and relationships from the generalized superclass.

-- Aggregation : Aggregation is a technique used to represent relationships among relationships in the ER model. It involves abstracting a relationship into a higher-level entity, known as an abstract entity, to simplify the design and avoid redundancy.
-- Key Points : Purpose : To model scenarios where a relationship itself participates in another relationship.
--                      : To avoid making overly complex and redundant relationships in the database.
--            : How It Works : A relationship (e.g., between Employee, JobRole, and Branch) is treated as a single higher-level entity.
--                           :This aggregated entity can then form a relationship with another entity (e.g., Manager).
--            : Example : Scenario : An Employee works in a Branch with a specific JobRole. A Manager supervises this setup.
--                      : Instead of creating a quaternary relation involving all entities, the ternary relationship (Employee-JobRole-Branch) is abstracted into an aggregate entity, which then relates to Manager.
--            : Advantages : Simplifies the design by reducing the complexity of relationships.
--                         : Avoids redundancy and unnecessary dependencies in the database.
--            : Depiction : Represented in ER diagrams with a rectangle enclosing the relationship being aggregated, which is then connected to the external entity.

-- Attribute Inheritance : Attribute inheritance ensures that the attributes of a parent entity (superclass) are automatically inherited by its sub-entities (subclasses) in the ER model.
-- Key Points : Purpose : To maintain consistency and avoid duplication of common attributes across entities.
--                      : To establish a clear hierarchical structure in the database.
--            : How It Works : Attributes defined in the higher-level entity (superclass) are shared by all its lower-level entities (subclasses).
--                           : Subclasses like Customer and Employee inherit these attributes while adding their own specific ones (e.g., Customer ID for Customer, Salary for Employee).
--            : Example : A Person entity has attributes like Name and Address.
--                      : Subclasses like Customer and Employee inherit these attributes while adding their own specific ones (e.g., Customer ID for Customer, Salary for Employee).
--            : Advantages : Reduces redundancy in schema design. Enhances clarity and simplifies updates to shared attributes.
--                         : Avoids redundancy and unnecessary dependencies in the database.

-- Participation Inheritance : If a parent entity set participates in a relationship then its child entity sets will also participate in that relationship.

-- Go to the hand written notes! for more details and diagram!

-- ----------------------------------------------------------------------- Lecture 5 : Making of ER Diagram - Banking System ER Model --------------------------------------------------------------------------------------------------->
-- Go to hand written notes! for the whole lecture!

-- ----------------------------------------------------------------------- Lecture 6 : Making of ER Diagram - Facebook Database --------------------------------------------------------------------------------------------------------->
-- Its just another ERD but this time for Facebook DB, you can refer to the vdo itself, its only for practice and you can learn it from practicing!

-- ----------------------------------------------------------------------- Lecture 7 : Relational Model --------------------------------------------------------------------------------------------------------------------------------->
-- It is another data model apart from ER Model, in ER model the database schema is represented in form of a diagram! but in Relational Model it is represented in form of the tables where it has rows and columns!
-- Relational Model (RM) organises the data in the form of relations (tables).
-- A relational DB consists of collection of tables, each of which is assigned a unique name.
-- A row in a table represents a relationship among a set of values, and table is collection of such relationships.
-- Tuple: A single row of the table representing a single data point / a unique record.
-- Columns: represents the attributes of the relation. Each attribute, there is a permitted value, called domain of the attribute.

-- ER model me jo jo entities thi vo relational model me tables ban jaati hai!
-- ER model me jo jo attributes hote hai vo sab relational model me columns ban jaati hai!
-- Degree of Table : Number of Attributes!
-- Cardinality : Number of tuples!
-- Jab DB Design hota hai toh pehle ER model banta hai and then uss ER model se Relational Model banta hai!
-- And then ek RDBMS  software hota hai jo iss relational model ko implement krta hai! like creation and updation of the whole tables and relations among them! example of RDBMS Software : MySQL, Postgre, Oracle!
-- Ab humne ek ER model ke entities and attributes ko table and columns ke form me represent krdiya and jo rows bani unko humne tuple bol diya, but jo relation hai unn entities ke beech ke usko kaise define kre tabular form me? so for that we have Foreign Key!

-- Properties of the Table : The name of relation is distinct among all other relation.
--                         : The values have to be atomic. Can’t be broken down further.   
--                         : The sequence of row and column has no significance.   
--                         : Tables must follow integrity constraints, it helps to maintain data consistency across the tables
--                         : Each tuple must be unique in a table.
--                         : The name of each attribute/column must be unique.

-- Relational Keys : Super Keys : Any P&C of attributes present in a table which can uniquely identify each tuple. like suppose agar kisi table me multiple attributes hai and hum unn sab attributes ki jitni bhi combinations possible hai jo kisi tuple ko uniquely identify krenge, That will be a super key!
--                 : Candidate Keys : Minimum subset of super keys, which can uniquely identify each tuple. It contains no redundant attribute. Superkeys me vo saare possible combinations hote hai, but in case of Candidate keys, hum super keys ka hi subset lete hai jo kisi tuple ko uniquely identify kr sake and usme koi redudant attribute na ho! redudant attribute means jahaa values same nhi ho sakti!
--                                  : CK value shouldn’t be NULL.
--                 : Primary Key : Selected out of CK set, has the least no. of attributes.
--                 : Alternate Keys : All CK except PK. It is also called Secondary Key.
--                 : Foreign Keys : It creates relation between two tables.
--                                : A relation, say r1, may include among its attributes the PK of an other relation, say r2. This attribute is called FK from r1 referencing r2. 
--                                : The relation r1 is aka Referencing (Child) relation of the FK dependency, and r2 is called Referenced (Parent) relation of the FK.
--                                : FK helps to cross reference between two different relations.
--                 : Composite Key : PK formed using at least 2 attributes.
--                 : Compound Key : PK which is formed using 2 FK.
--                 : Surrogate Keys : Suppose you have DB of 2 Schools, and their criteria of uniquely identifying students are different! like one school stores the roll number as 1 2 3... and another stores it like A101, A102 and so on... so now if we want to merge the tables of these two schools, so we will make another column or attribute which will give a common serial number for all the students/tuples!
--                                  : Generated automatically by DB, usually an integer value.
--                                  : May be used as PK.
--                                  : It is a self generated PK. DB generate it itself after merging!

-- Integrity Constraints : CRUD Operations must be done with some integrity policy so that DB is always consistent. Introduced so that we do not accidentally corrupt the DB.
--                       : Domain Constraints : Restricts the value in the attribute of relation, specifies the Domain. E.g., We want to specify that the enrolment should happen for candidate birth year < 2002.
--                       : Every relation should have PK. PK != NULL.

-- Refrential Constraints : Specified between two relations & helps maintain consistency among tuples of two relations.
--                        : Insert Constraints : Suppose you have two tables one is order and one is customer! and order table me ek orderId jo PK hai and ek CustID hai jo FK hai, so this table is the child table and Customer table is Parent table, so Isme there is one Insert Constraint, where it means hum order table me aise hi koi bhi value insert nhi kr sakte! kyunki harr order ke saath uska ek customer bhi hai jiski ek CustID hai, but agar jo tuple hum Order table me add kr rhe hai uska jo custID hai vo agar Customer table me hi exist nhi krta hai toh yahaa error sho hojayega! Kyunki hum koi ek invalid tuple add krne ki koshish kr rhe hai order table me ek customer ke liye jo customer customer vaale parent table me hi exist nhi krta!
--                        : Delete Constraints : Taking same above example, so it means, we can't delete any tuple from the Parent table whose PK is used as a reference in the Child Table! vrna kya hoga ki maanlo koi order humne fetch kiya and uske corresponding jo CustID hai vo customer table me exist hi nhi krta, this will create a problem, so for that we have this Delete Constraint!
--                        : But kya iska mtlb ye hai ki hum parent table me se kuch delete kr hi nhi sakte hai? so nhi aisa nhi hai, becoz we have a keyword "ON DELETE CASCADE" jab koi parent table create kr rhe hote hai, tab hi hum ye keyword, table defintion me daal dete hai! taaki jab bhi koi tuple delete ho parent me se toh vo child me se bhi delete hojaye!
--                        : Ek aur tareeka hota hai Delete krne ka parent table me se that is "ON DELETE SET NULL", kyunki iss case me jab delete hoga parent table me se toh child table me se vo poora tuple delete nhi hoga, balki jo uss parent table ke corresponding foreign key thi child table me uski value NULL hojayegi!
--                        : There are multiple type of referential constraints while deleting/updating data in the child or parent table, they are : ON [DELETE | UPDATE] [SET NULL | CASCADE | RESTRICT | NO ACTION | SET DEFAULT];
--                        : ON DELETE/UPDATE SET NULL : If a record in the parent table is deleted, the foreign key column(s) in the child table are set to NULL. and If a primary key value in the parent table is updated, the foreign key column(s) in the child table are set to NULL.
--                        : ON DELETE/UPDATE CASCADE : If a record in the parent table is deleted, all corresponding records in the child table are automatically deleted. and If a primary key value in the parent table is updated, all corresponding foreign key values in the child table are automatically updated to match.
--                        : ON DELETE/UPDATE RESTRICT : Prevents the deletion of a record in the parent table if there are corresponding records in the child table. and Prevents the update of the primary key value in the parent table if there are corresponding foreign key values in the child table.
--                        : ON DELETE/UPDATE NO ACTION : Similar to RESTRICT, it prevents the deletion or update of records in the parent table if there are corresponding records in the child table. There is no very signifcant difference between the two apart from terminologies and intentions, NO ACTION explicitly states that no action will be taken, while RESTRICT implies a restriction on the action.
--                        : ON DELETE/UPDATE SET DEFAULT : If a record in the parent table is deleted, the foreign key column(s) in the child table are set to their default values. and If a primary key value in the parent table is updated, the foreign key column(s) in the child table are set to their default values.

-- Key Constraints : NOT NULL : By default an attribute/Column can be null but using this keyword, it cannot be null! Enforce a column to not to accept NULL.
--                 : UNIQUE : It helps us to ensure that all the values consisting in a column are different from each other. Both Unique and PK constraint provides uniqueness! you have many unique constraints per table but only one PK per table!
--                 : DEFAULT : it is used to set the default value to the column. The default value is added to the columns if no value is specified for them. example jaise koi Amazon ka DB hai usme specified hai kis kis ne prime subscription le rakha hai, by default vo value 0 hai and jaise hi koi leleta hai tab uski value 1 ho jaati hai!
--                 : CHECK : It is one of the integrity constraints in DBMS. It keeps the check that integrity of data is maintained before and after the completion of the CRUD. like age ? 18 honi chahiye college me admission lene ke liye! and similar cheeze!
--                 : PRIMARY KEY : This is an attribute or set of attributes that can uniquely identify each entity in the entity set. The primary key must contain unique as well as not null values. it is NOT NULL, UNIQUE and every entity contain only 1 PK!
--                 : FOREIGN KEY : Keeps the relations between 2 tables! Whenever there is some relationship between two entities, there must be some common attribute between them. This common attribute must be the primary key of an entity set and will become the foreign key of another entity set. This key will prevent every action which can result in loss of connection between tables.

-- ----------------------------------------------------------------------- Lecture 8 : Transform ER Model to Relational Model --------------------------------------------------------------------------------------------------------------------------------->
-- ER Diagram Notations to Relations!
-- Strong Entity : Becomes an individual table with entity name, attributes becomes columns of the relations
--               : Entity’s Primary Key (PK) is used as Relation’s PK.
--               : FK are added to establish relationships with other relations.

-- Weak Entity : Isme jo ek weak entity hoti hai vo ek table ka form leleti hai and uss weak entity ke saare attributes toh column ban hi jaate hai but uske saath saath iss weak entity ke corresponding jo strong entity hai jispe ye weak entity depend kr rhi hai uski primary key ko as a foreign key banaa lete hai! so total number of columns a weak entity will have is -> All attributes of weak entity + primary key of the corresponding string entity! 

-- Single Valued Attributes : Represented as columns directly in the tables/relations.

-- Composite Attributes : Handled by creating a separate attribute itself in the original relation for each composite attribute. Eg : Address: {street-name, house-no}, is a composite attribute in customer relation, we add address-street-name & address-house-no as new columns in the attribute and ignore “address” as an attribute.

-- Multi Valued Attributes : Kisi entity me agar koi aisa attribute hai jo multi valued hai toh usko toh uss poore attribute ko utha ke ek alag hi table bnaa denge jisme original entity ki PK as FK use hogi and uss FK ke corresponding jo bhi multiple values hai vo different tuples me store hojayegi, and vo multile valued column and FK ko mila ke ek Primary key ke tarah treat krenge!
--                         : Like suppose ki koi ek entity hai student ki and uska ek multi valued attribute hai dependent name, toh isme toh ab Mother and Father dono ka name aa sakta hai toh ye dependent name ek multi valued attribute hai! toh ab hum ek dependent name ke naam se ek alag table banayenge and then uss table me studentID ek foreign key ki tarah use krenge! and jo dependent names hai unko add krne ke liye iss hi table me ek DName naam se ek column bnaa lenge... so overall iss dependent_name naam ke table me ab do columns hai jinme se ek FK hai and ek DName hai...and ye FK and DName dono mil ke ek PK bnaa rhe hai iss dependent_name table ka!

-- Derived Attributes : They are not represented in the table, isme sirf calculate hi toh krna hai toh vo toh hum aise bhi kr sakte hai!

-- Generalisation : Method 1 : Ek table banao pehle jo Higher level entity ko show kr rha ho and then uske attributes bnaa do! and then lower-level entities bnao and unke khud ke attributes bnao and then jo Higher level entity thi uski jo PK thi usko Lower-level entities ki bhi PK bnaa do!
--                : Example - account (account-number, balance)
--                : Table 1 : savings-account (account-number, interest-rate, daily-withdrawal-limit)
--                : Table 2 : current-account (account-number, overdraft-amount, per-transaction-charges)
-- In the above cases account-number is the PK!

--                : Method 2 : Isme ye krna hota hai ki jo Higher level entity usko mtt bano sirf Lower level vaali banao and Higher level ki jo PK thi usko lower level ki PK bnaa do + jo bhi attributes the Higher level entity ke unko bhi lower level entity ke attributes bnaado!
--                : Table 1 : savings-account (account-number, balance, interest-rate, daily-withdrawal-limit)
--                : Table 2 : current-account (account-number, balance, overdraft-amount, per-transaction-charges)
-- But sometimes method 2 has some problems, which are like, Maanlo ki koi aisa account hai jo savings bhi hai and current bhi hai (mtlb overlapping generallization hai) toh usme balance toh same hi hoga! but according to 2nd Method dono lower level entity me balance stored hai toh balance iss case me do baar store ho jayega! which will create redudancy!
-- also if maanlo ki complete generalisation nhi hai and jo higher level entity hai account vo naa hi current hai naa hi savings vo kuch aur hi type ka account hai, then in that case aise accounts ko hum represent nhi kr payenge method 2 ka use krke!

-- Aggregation : Isme jo relationship establish hua hai different entity sets me, uss relationship ko leke ek table bnaa denge and jitne bhi entities involved hai unn sabki PK ko Attributes bnaa ke iss Relationship table ki, unn sab PK ko mila ker ek PK bnaa denghe iss new relationship table ki!

-- Unary Relationships : Isme ek entity jo hai vo apne aap se hi related hai! ab vo relation 1:1 ka ho sakta hai, 1:N ka ho sakta hai ya N:M ka ho sakta hai!
--                     : If 1:1 then, Jaise maanlo ek relation hai Person to Person ka and relation is "Married to" ka, then isme jo spouseID aur kuch nhi balki PK hi hogi person table ki jisko hum as a FK bnaa ke ek aur attribute add krdenge person table me, hence the schema will be, Person(EmpID, Name, SpouseID)
--                     : If 1:N then, Jaise maanlo ek employee table hai and iska ek unary relation hai khud ke saath hi "Manages" ka then in that case hum iss person table ki PK ko as a FK bnaa ke iss hi table me ek naya attribute add krdenge! means Person(EmpID, Name, Joining-Date, Emp-Mgr-ID), isme ye Emp-Mgr-ID te khud EmpID hi hai! iss hi table ki jisko bss hum Mgr-ID ki tarah use kr rhe hai toh establish the unary relation! and this FK can be NULL also, kyunki ho sakta hai kisi EmpId ke corresponding koi Manager ho hi na kyunki kya pta vo CEO ho
--                     : If M:N then, Jaise maanlo koi relation hai courses ka courses se and the relation is about "PreRequisite", in that case ek course ko padhne ke liye kuch aur dusre courses padhne zaruri ho sakte hai, so to represent that, we will create a table of Courses(CourseID, Title) & PreRequisite(CourseID, PreReq-Course-ID), isme bhi humne vhi kiya hai ki CourseID jo ek PK hai main table me uska hi name change krke FK bnaa ke iss table me daal diya hai and ye dono attributes milke ek PK bnaa rhe hai iss table ki!

-- Practice using the banking system and Facebook ER Diagrams and convert it into Relational Models!

-- ----------------------------------------------------------------------- Lecture 9 : SQL --------------------------------------------------------------------------------------------------------------------------------->
-- Will mention only the exclusive details jo iss lecture se mili hai, if want to study from A-Z then visit the Apni Kaksha notes and FCC Notes!
-- Here we go...

-- Can we use select keyword wothout using the from clause? Yes we can!
-- This is how... Using dual tables... example...
-- Select 55 + 20, this query will display the sum.. so we are using select without from
-- Select now(), this is a query where we try to see the current timings of the server, if server is located at some long distances and we are trying to pass some queries in the database, and for some reason we want o check the timing then we use this query!
-- Select ucase("utkarsh"), this query will display the upper case version of the word utkarsh and output will be, UTKARSH
-- Select lcase("UTKARSH"), this will display the lower case version of the word UTKARSH and output will be, utkarsh

-- CHECK Constraint, to use this we write...
-- CREATE TABLE MyTable (
--     id PRIMARY KEY,
--     Name VARCHAR(50),
--     Age INT,
--     CONSTRAINT Check_age CHECK (Age>18) -> This is how we create the constraint CHECK
-- )

-- Now in DML Commands we have studied some commands like INSERT, UPDATE, DELETE, now there is another command and that is "REPLACE"...
-- This command is used when we want to replace some row from the table, if the row we want to replace exist in the table then we this command replaces it and if that row does not exist then this command works as Insert command!
-- Syntax...
-- REPLACE INTO Customer(id, City) VALUES (101,Ghaziabad); If this row with ID 101 exist in the table (table has 4 attributes, id, name, age and city and we are replacing only two attributes id and city) then this command will replace that row where ID is 101 (id is imp to include for replacing vrna kyunki vhi ek hai jo uniquely identify krta hai each row ko) also jab replace hoga vo row, tab humne toh bss id and city replace ki hai toh baaki dono attributes ki jagah NULL store hojayega! and abhi toh chalo vo row with ID 101 exist krti thi agar nhi krti hoti toh ye INSERT ki tarah act krta and ek nayi row insert hojaati!
-- Another syntax...
-- REPLACE INTO Customer(id, City) SET ID = 101, City = "Ghaziabad"; Does the same thing as above bss syntax thora alag hai and iska bhi same functionality jaisa above vaale ka!

-- Difference between REPLACE and UPDATE...
-- Agar replace me data present nhi hai toh insert ki tarah kaam krega and data add krdega, but update will do nothing in this case!

-- Baaki joins we have already studied previously! one more type of join here is... "CROSS JOIN" iska zyada industrial use nhi hai, what it does is... if table 1 has 5 rows and table 2 has 10 rows then it will do the cross product of all the rows and will join the two tables and the final table will have 50 rows!
-- Syntax is... suppose you have two tables Table 1 and Table 2...
-- SELECT T1.name, T1.lname, T2.id, T2.name FROM Table1 as T1
-- CROSS JOIN Table2 as T2; -> The output will contain number of rows = product of rows of both the tables
-- This is how it works!

-- Can we use JOIN without using JOIN Keyword? Yes we can!
-- Syntax...
-- SELECT * FROM LeftTable, RightTable WHERE LeftTable.id = RightTable.id -> So here we have implemented Inner Join without using the JOIN Keyword!

-- Set Operations in SQL : Union, Intersection and Minus...
-- Set and Joins both are used to combine two tables, joins do it along columns and sets do it along rows!
-- Used to combine multiple select statements.
-- Always gives distinct rows.
-- Jinn columns ko combine krna chahte hai row wise unke data types same hone chahiye! and number of columns jo select krne hai dono tables me se vo bhi same hone cahiye! and it combines results vertically! also it combines distinct rows!

-- Union : Combines two or more SELECT statements,
-- Union Syntax :
-- SELECT * FROM table1
-- UNION
-- SELECT * FROM table2;
-- Number of column, order of column must be same for table1 and table2.

-- Intersect : Returns common values of tables, in SQL there is not keyword for Intersect, so we need to formulate it! and for that we use inner join
-- Formulated Syntax for Intersect :
-- Select Distinct id from T1
-- InnerJoin T2
-- using (id);

-- Minus : T1 - T2, it is similar what we do in maths, there is no keyword for Minus in SQL, so we need to formulate it...
-- Formulated Syntax for Minus :
-- Select id from T1
-- Left Join T2 using (id)
-- Where T2.id is NULL;

-- Sub Queries : When there is one query inside another query, they are alternatives to Join!
-- Sub Queries Syntax :
-- SELECT column_list (s) FROM table_name WHERE column_name OPERATOR
-- (SELECT column_list (s) FROM table_name [WHERE]);
-- Sub queries exist mainly in 3 clauses : Inside where, Inside from and inside select!

-- SubQuery using From Clause : SELECT MAX(rating) FROM (SELECT * FROM movie WHERE country = ‘India’) as temp;
-- SubQuery using Select Clause : SELECT (SELECT column_list(s) FROM T_name WHERE condition), columnList(s) FROM T2_name WHERE condition;

-- Derived SubQuery : SELECT columnLists(s) FROM (SELECT columnLists(s) FROM table_name WHERE [condition]) as new_table_name;

-- Co-Related SubQuery : With a normal nested subquery, the inner SELECT query runs first and executes once, returning values to be used by the main query,  A correlated subquery, however, executes once for each candidate row considered by the outer query. In other words, the inner query is driven by the outer query.

-- Join vs SubQuery : Joins are Faster and SubQueries are Slower, Joins maximize calculation burden on DBMS and Sub Queries keeps responsibility of calculations on user, Joins are difficult to understand and implement but subQueries are relatively easier, chhosing optimal join for optimal result is difficult but subQueries are easy!

-- Views in Tables : A view is a database object that has no values. Its contents are based on the base table. It contains rows and columns similar to the real table.
--                 : In MySQL, the View is a virtual table created by a query by joining one or more tables. It is operated similarly to the base table but does not contain any data of its own.
--                 : The View and table have one main difference that the views are definitions built on top of other tables (or views). If any changes occur in the underlying table, the same changes reflected in the View also.
--                 : CREATE VIEW view_name AS SELECT columns FROM tables [WHERE conditions];
--                 : ALTER VIEW view_name AS SELECT columns FROM table [WHERE conditions];
--                 : DROP VIEW IF EXISTS view_name;
--                 : CREATE VIEW Trainer AS SELECT c.course_name, c.trainer, t.email FROM courses c, contact t WHERE c.id = t.id; (View using Join clause).

-- NOTE: We can also import/export table schema from files (.csv or json).

-- ----------------------------------------------------------------------- Lecture 10.1 : SQL Questions --------------------------------------------------------------------------------------------------------------------------------->
-- These question will be practiced on MySQL, so there wont be any notes, if there is something important then visit the vdo again!
-- Some importante concepts and keywords you need to try and search for it later...
-- Substring Keyword : Substring(String, Starting point, Ending point).
-- Upper and Lower case keyword : Upper(string) / Lower(string).
-- instr keyword : Tells the position of character in a string, syntax : INSTR(string, 'character'). and it is case-insensitive.
-- Rtrim and Ltrim keywords : It helps in removing the white spaces from right and left side, syntax is simple, Ltrim(string) / Rtrim(string).
-- Replace keyword : Replaces substring inside a string, replace(string, kis substring ko replace krna hai, kisme replace krna hai).
-- concat keyword : Combines two strings, example : Select concat(first_name, " " ,last_name) from Worker; or simply Select concat(first_name, last_name) from Worker; / Select concat(string1, string2) from Worker;
-- curdate() and now() keywords
-- Mod() : Syntax : Mod(value, number jisse mod krna hai)
-- Study co-related subqueries as it is important! and also Joins!
-- Try the last question of the video!
-- Rest just practice and practice and practice and dry run dry run dry run your queries!

-- In MySQL "<>" also behaves as "!="
-- Interesting Queries :
-- 1) To clone a whole table from another already existing table...
--      Write an SQL query to clone a new table from another table.
--      CREATE TABLE worker_clone LIKE worker;
--      INSERT INTO worker_clone select * from worker;
--      select * from worker_clone;

-- 2) Write an SQL query to determine the nth (say n=5) highest salary from a table.
-- select * from worker order by salary desc LIMIT 4,1; -> Yahaa humne 5th highest nikalne ke liye limit 4,1 likha hai! its like agar nth highest entry chahiye thi toh in that case we write limit n-1,1;

-- Sub-Queries and Co-Related Subqueries :
-- Sub-Queries : Isme jo outer query hoti hai vo inner query pr depend kr rhi hoti hai!
-- Example : Question 1 : From the following tables, write a SQL query to find all the orders issued by the salesman 'Paul Adam'. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
--         : Answer : SELECT * FROM orders WHERE salesman_id = (SELECT salesman_id FROM salesman WHERE name='Paul Adam');

--         : Question 2 : Write an SQL query to show the second highest salary from a table using sub-query. select max(salary) from worker using sub-query.
--         : Answer : select max(salary) from worker where salary not in (select max(salary) from worker); -> But now if we try to output the third highest salary, and using the same logic, it may fail becoz NOT IN keyword sometimes does not works well with NULL values, theoritically answer should be 3rd highest salary, However, it might not work as intended due to potential issues with how NOT IN handles the list of salaries and NULL values. A more efficient approach for this is...

--         : Question 3 : Write an SQL query to show the third highest salary from a table using sub-query. select max(salary) from worker using sub-query.
--         : Answer : SELECT DISTINCT salary FROM worker ORDER BY salary DESC LIMIT 1 OFFSET 2; -> Here salary ko select kiya gya, then desc order me order kiya gya! then LIMIT ne bataya ki kitni row output me rakhni hai, and then OFFSET ne bataya ki kitni rows top se skip krni hai! so LIMIT = 1 means ek hi row output me ayegi! and then OFFSET = 2 means top se do rwos skip krni hai! and then we get the third highest salary!

-- Co-Related Subquery : Isme inner and outer dono queries ek dusre pr depend kr rhi hoti hai!
-- Example : Question 1 : Write an SQL query to show the second highest salary from a table using co-related sub-query.
--         : Answer : SELECT salary FROM worker w1 WHERE 1 = ( SELECT COUNT(DISTINCT w2.salary) FROM worker w2 WHERE w2.salary > w1.salary );

-- ----------------------------------------------------------------------- Lecture 10.2 : SQL Questions --------------------------------------------------------------------------------------------------------------------------------->
-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select first_name AS WORKER_NAME from worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select UPPER(first_name) from worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT distinct department from worker;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(first_name, 1, 3) from worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
select INSTR(first_name, 'B') from worker where first_name = 'Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select RTRIM(first_name) from worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select LTRIM(first_name) from worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct department, LENGTH(department) from worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select REPLACE(first_name, 'a', 'A')  from worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
select CONCAT(first_name, ' ', last_name) AS COMPLETE_NAME from worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker ORDER by first_name;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name, department DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where first_name IN ('Vipul', 'Satish');

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where first_name NOT IN ('Vipul', 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
select * from worker where department LIKE 'Admin%';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where first_name LIKE '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where first_name LIKE '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where first_name LIKE '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where salary between 100000 AND 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where YEAR(joining_date) = 2014 AND MONTH(joining_date) = 02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select department, count(*) from worker where department = 'Admin';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
select concat(first_name, ' ', last_name) from worker
where salary between 50000 and 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department, count(worker_id) AS no_of_worker from worker group by department
ORDER BY no_of_worker desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select w.* from worker as w inner join title as t on w.worker_id = t.worker_ref_id where t.worker_title = 'Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
select worker_title, count(*) as count from title group by worker_title having count > 1;

-- Q-26. Write an SQL query to show only odd rows from a table.
select * from worker where MOD (WORKER_ID, 2) != 0; -- or --
select * from worker where MOD (WORKER_ID, 2) <> 0;

-- Q-27. Write an SQL query to show only even rows from a table. 
select * from worker where MOD (WORKER_ID, 2) = 0;

-- Q-28. Write an SQL query to clone a new table from another table.
CREATE TABLE worker_clone LIKE worker;
INSERT INTO worker_clone select * from worker;
select * from worker_clone;

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
select worker.* from worker inner join worker_clone using(worker_id);

-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS
select worker.* from worker left join worker_clone using(worker_id) WHERE worker_clone.worker_id is NULL;

-- Q-31. Write an SQL query to show the current date and time.
-- DUAL
select curdate();
select now();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
select * from worker order by salary desc LIMIT 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select * from worker order by salary desc LIMIT 4,1;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
select salary from worker w1
WHERE 4 = (
SELECT COUNT(DISTINCT (w2.salary))
from worker w2
where w2.salary >= w1.salary
);
 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
select w1.* from worker w1, worker w2 where w1.salary = w2.salary and w1.worker_id != w2.worker_id;

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
select max(salary) from worker
where salary not in (select max(salary) from worker);

-- Q-37. Write an SQL query to show one row twice in results from a table.
select * from worker
UNION ALL
select * from worker ORDER BY worker_id;

-- Q-38. Write an SQL query to list worker_id who does not get bonus.
select worker_id from worker where worker_id not in (select worker_ref_id from bonus);

-- Q-39. Write an SQL query to fetch the first 50% records from a table.
select * from worker where worker_id <= ( select count(worker_id)/2 from worker);

-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.
select department, count(department) as depCount from worker group by department having depCount < 4;

-- Q-41. Write an SQL query to show all departments along with the number of people in there.
select department, count(department) as depCount from worker group by department;

-- Q-42. Write an SQL query to show the last record from a table.
select * from worker where worker_id = (select max(worker_id) from worker);

-- Q-43. Write an SQL query to fetch the first row of a table.
select * from worker where worker_id = (select min(worker_id) from worker);

-- Q-44. Write an SQL query to fetch the last five records from a table.
(select * from worker order by worker_id desc limit 5) order by worker_id;

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select w.department, w.first_name, w.salary from
(select max(salary) as maxsal, department from worker group by department) temp
inner join worker w on temp.department = w.department and temp.maxsal = w.salary;

-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery
select distinct salary from worker w1
where 3 >= (select count(distinct salary) from worker w2 where w1.salary <= w2.salary) order by w1.salary desc;
-- DRY RUN AFTER REVISING THE CORELATED SUBQUERY CONCEPT FROM LEC-9.
select distinct salary from worker order by salary desc limit 3;

-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery
select distinct salary from worker w1
where 3 >= (select count(distinct salary) from worker w2 where w1.salary >= w2.salary) order by w1.salary desc;

-- Q-48. Write an SQL query to fetch nth max salaries from a table.
select distinct salary from worker w1
where n >= (select count(distinct salary) from worker w2 where w1.salary <= w2.salary) order by w1.salary desc;

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department , sum(salary) as depSal from worker group by department order by depSal desc;

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select first_name, salary from worker where salary = (select max(Salary) from worker);

-- ----------------------------------------------------------------------- Lecture 11 : Normalisation --------------------------------------------------------------------------------------------------------------------------------->
-- It is used to optimized the DB and its design, and to reduce data redudancy!
-- But before that lets learn Function Dependency! : Suppose there is a table with 4 attrubutes! A,B,C,D... now we write some mathematical functions that are defining how the attributes are related to each other! so suppose FDs are, A->B and A->C, now here it means jo B and C attribute hai vo dependent hai A pr, and with the help of A we can identify B and C!
-- and here A can be a single attribute that can uniquely identify the other attributes or set of attributes that are combined to uniquely identify other attributes! and here A is called Determinant and B/C are called Dependent!
-- Example : In a employee table with 3 attributes, like Emp_ID, Emp_Name and Department!, now Emp Id is a primary key and it can uniquely identify Emp_name and departement!, so here Emp_ID is a determinant and other 2 are Dependent...

-- Functional Dependencies : It's a relationship between the primary key attribute (usually) of the relation to that of the other attribute of the relation.
--                         : X -> Y, the left side of FD is known as a Determinant, the right side of the production is known as a Dependent.

-- Types of Functional Dependencies : Trivial and Non-Trivial!
-- Trivial FDs : A->B where B is a subset of A, example - {Emp_ID, Name} -> {Emp_ID}, so here unn dono attributes se uska subset toh idenitfy ho hi jayega!
--             : Also A->A and B->B, they are also Trivial FDs, as koi attribute khud ko toh identify kr hi sakta hai! and ek attribute khud ka toh subset hoga hi!

-- Non-Trivial FDs : A->B where B is not a subset of A, means A is an attribute or a set of attributes that can uniquely identify some other attribute which is not a subset of A, means mathematically it says - B is not a subset of A, and A intersection B is NULL, example - {Suppose Emp_ID, Emp_name} -> Emp_dept, here B is not a subset of A, so it is a Non-Trivial FD.

-- Now there are some rules of FDs! which are called Armstrong Axioms!
-- 1) Reflexive : If ‘A’ is a set of attributes and ‘B’ is a subset of ‘A’. Then, A → B holds. means suppose A = {a,b,c,d,e} and B = {a,b,c}, now we can see B is a subset of A, so ofc A can easily identify B.
-- 2) Augmentation : Now suppose we are already given one FD, that is A->B and now agar isme hum ek aur koi attribute augment krte hai like C, means if we do something like we multiply C on both sides AC->BC, then it is also valid!
--                 : If B can be determined from A, then adding an attribute to this functional dependency won’t change anything.
-- 3) Transitivity : If A->B and B->C then A->C
-- Now we can get some questions like, kuch pair of FDs di hui ho and then hume koi aur FDs derive krni ho toh for that we can use the above Rules!

-- Now the question is why Normalization!
-- To avoid redundancy in the DB, not to store redundant data.

-- But why we are in need to avoid redundant data, now this is becoz redundant data introduces 3 anomalies! - Insertion, Deletion and Updation!
-- Insertion Anomalies : Now suppose kisi ko DB ka zyada kuch knowledge nhi hai usne seedha data utha ke ek database bna diya with attributes like, [ID, Name, Age, Branch_code, Branch_name, Branch_HOD]
--                     : Now ab dikkat kya hogi ki maanlo hume koi nayaa student enroll kiya hai college me and vo student ka abhi branch and all decided nhi hai bss itna ptaa hai ki uska name kya hai and roll number and age, iske alawa we dont know anything, then in that case hume baaki attributes ko NULL krna padega! and baad me jab ye data mile tab jaake we will update the DB! toh isme hume double kaam krna pad rha hai! kyunki ek hi table me saara data stored hai!
--                     : Now another problem is maanlo uss college me ek nayaa branch khola hai college ne suppose IT, ab IT branch ko database me add toh krenge hi! and abhi naya naya khola hai! toh hum is table me IT branch ko add nhi kr payenge kyunki uske corresponding abhi koi bhi student enrolled nhi hai! and studentID toh null kr nhi sakte kyunki ye cheez jisne DB banaya tha college ka usne ID ko PK banaya hua hai! toh bss saara data ek hi table me hone ke chakkar me hum kuch aisi info jo college ke liye imp hai vo insert nhi kr paa rhe! acha hota agar branch and student ka alag table hota hai and branchID ek foreign key ki tarah use ho rhi hoti student table me
--                     : When certain data (attribute) can not be inserted into the DB without the presence of other data.

-- Deletion Anomalies : Now suppose in the same example, table me ko aisi branch hai jiske corresponding koi ek hi student hai! and vo pass out hogya hai! toh ab uska data delete hoga college ke DB se, toh ab iss chakkar me jo branch tha vo bhi delete hogya Db se! but aisa thori hoga, bss student gya na toh branch toh rehna chahiye table me! but kyunki sab kuch ek hi table me hai isliye ye dikkat hogyi! so again alag tabkles hoti toh better rehta!
--                    : The delete anomaly refers to the situation where the deletion of data results in the unintended loss of some other important data.

-- Updation Anomalies : Now maanlo kisi ek department ke HOD change hogye! toh ab jab update krenge toh jitne bhi tuples jisme vo purane vaale HOD ka naam tha vo saare tuples update honge! and itna samajh toh nhi aata hai, but it takes a little more time! what we mean is, ek choti se change ke kaaran table me mutiple jagah pr changes krne pad rhe hai
--                    : The update anomaly is when an update of a single data value requires multiple rows of data to be updated.
--                    : and maanlo jo changes chah rhe the vo changes harr unn tuples me nhi ho paai iss chakkar me data inconstency arise hojayegi! Due to updation to many places, may be Data inconsistency arises, if one forgets to update the data at all the intended places.

-- Inn sab anomalise se DB ka size increase ho jaata hai jo cheez ek singlt table me kuch rows me save hojaati vo naa kr ke, humaare saara data ek hi tabke me store krne se DB ka size badh gya kyunki number of tuples badh gye
-- To rectify these anomalies and the effect of these of DB, we use Database optimisation technique called NORMALISATION.
-- So iss hi condition me we use Normalisation! overall what we do is we make multiple tables to avoid Data Redudancy in DB! like Student and Branch ke alag alag tables bnaa do!

-- Normalisation : Normalisation is used to minimise the redundancy from a relations. It is also used to eliminate undesirable characteristics like Insertion, Update, and Deletion Anomalies.
--               : Normalisation divides the composite attributes into individual attributes OR larger table into smaller and links them using relationships.
--               : The normal forms are used to reduce redundancy from the database table.

-- But lets see, what we actually do in Normalization! we keep decomposing tables! and we do it until SRP (Single Responsibilty Principle) achieve na hojaye! and here we use Normal Forms to achieve it!

-- Types of Normal Forms : 1NF, 2NF, 3NF and BCNF!
-- 1NF (1st Normal Form) : Every relation cell must have atomic value and Relation must not have any multi-valued attribute, if there are any we will reduce it into multiple attribute! like if there is one attribute of phone number and it has multiple values then we will create multiple phone_numbers attribute for storing multiple numbers!
-- 2NF (2nd Normal Form) : To implement 2NF normalization, it should already have 1NF normalization!
--                       : And there should not be any partial dependencies! means, All non-prime attributes must be fully dependent on PK. and Non prime attribute can not depend on the part of the PK.
--                       : Lets understand it more clearly! suppose we have relation R(A,B,C,D) and A & B combines to be a primary key for the table! so A & B are prime attributes! and rest C & D are non-prime attributes! and ab maanlo koi ek functional dependency di hui hai where it says that B->C, ab yahaa B ek PK nhi hai balki ye ek part of PK hai and C ek part of PK pr depend kr rha hai! and this is called partial dependencies! so the correct dependencies could be, AB->C or AB->D, this is full dependencies!
--                       : Ab problem ye aayegi ki, maanlo iss hi case me A and B milke ek PK banaa rhe hai toh dono me se koi ek NULL ho sakta hai but dono saath me NULL nhi ho sakte! and ab maanlo A non-Null hai and B Null hai and suppose here is a partial dependency that is B->C or B->D toh aisa kaise ho sakta hai ki koi NULL value kisi aur attribute ko identify kr rha hai! so this is a problem with partial dependency!
--                       : Ab to achieven 2NF normalization, what we will do is, we will write 2 relations, R1(ABD) isme AB combined ek PK hai and R2(BC) isme sirf B ek primary key hai, and now aisa krke vo partial dependenciy hatt gyi, kyunki jahaa jahaa B null tha usko humne R2 me include hi nhi kiya and B ke around ek alag hi relation establish krdiya! now ye same cheez hum A ke saath bhi kr sakte the kisi non prime attribute ko leke! for example, R1(ABD) and R2(AC), isme jahaa A null hai usko humne R2 me include nhi kiya! and similarly we can also do this, R1(ABC) and R2(BD) and similarly you get it!
--                       : Toh overall hum yhi krte hai tables ko decompose krke normalizations achieve krte hai!
-- 3NF (3rd Normal Form) : Now to implement 3NF, the database should be 2NF normalized! means yahaa hum harr NF ke saath DB ko further optimize krte jaa rhe hai!
--                       : No transitivity dependency exists.
--                       : Non-prime attribute should not find a non-prime attribute.
--                       : Now lets understand this with an example, suppose a relation R(ABC) and here A is PK, and now (which we observed though practically going through the DB the FD is A->B & B->C and from Transitivity rule of FD, we can say A->C, toh ab yahaa baat ye aati hai ki agar A C ko determine kr hi sakta hai toh isme hume B->C ki zarurat hi kya hai krne ki, kyunki remember rule aane ke kaaran ye nhi hua, ye cheez ho rhi thi isliye isme isliye ye rule discover hua!
--                       : Now lets take an example, maanlo ek table hai, lets draw it...
-- Refernce table to understand 3NF...
-- A    |B    |C    |
-- a    |1    |x    |
-- b    |1    |x    |
-- c    |1    |x    |
-- d    |2    |y    |
-- e    |2    |y    |
-- f    |3    |z    |
-- g    |3    |z    |
--                       : Now we can see here A is a PK, and according to our FD A->B and B->C so A->C, so what is happening is, A chalo theek hai B ko identify krlega! but B bhi C ko identify kr paa rha hai and agar aisa ho rha hai toh humare PK ka kaam hi kya rha jab ek non-prime attribute dusre attribute ko identify kr paaye toh! also you can see that it is creating redudancy as you can see repeatative data!
--                       : So we will remove this through 3NF, isme dikkat B->C vaali FD genrate kr rhi hai, chaahe baat redudancy ki ho ya chaahe repetative data ki ho! so we will decompose this table into 2 simpler tables with relations like, A->B and B->C and here A and B are PKs of their respective tables! and isse kya hua we will have two tables and dono me jo A and B PKs banaye hai vo dono hi apne apne non-prime attribute ko uniquely identify kr paa rhe hai!
-- Hence, the decomposed table is after applying 3NF...
-- A    |B    |      |B      |C      |
-- a    |1    |      |1      |x      |
-- b    |1    |      |2      |y      |
-- c    |1    |  &   |3      |z      |
-- d    |2    |
-- e    |2    |
-- f    |3    |  
-- g    |3    |          : Now isse we can see ab isme na koi redudancy hai, na koi transitivity and na koi non-prime attribute kisi non-prime attribute ko uniquely identify kr paa rha hai, jo kr paa rha hai vo ek prime attribute hai!


-- BCNF (Boyce-Codd Normal Form) : It is just a more better version of 3NF and for this relation must be 3NF optimized! But now lets draw a table and understand it by adding some constraints on our own to the table in order to understand BCNF...
-- Std_ID    |Subject    |Professor    |
-- 101       |Java       |PJ           |
-- 101       |CPP        |PC           |
-- 102       |Java       |PJ2          |
-- 103       |C#         |PC#          |
-- 104       |Java       |PJ           |
--                                : Some constrainsts on the above table are, one student can enroll in multiple subjects, for each subject a professor is assigned to a student!, multiple professor can teach a single subject! and one professor can teach only one subject!
--                                : And here the PK is {Std_ID, Subject} and some functional dependencies we observed here are, {Std_ID, Subject} -> Professor & Professor -> Subject, so what we are seeing here is Std_ID and Subject are prime attributes and Professor is a non-prime attribute! now pehli FD toh chalo sahi hai! but dusri vaale me ek non-prime attribute (professor) ek prime attribute (subject) ko identify kr paa rha hai, so that is why this table still need Optimization, and that will be done through BCNF!
--                                : Now lets see how we will apply BCNF and optimize our table more, so what we will do is, we will create 2 tables after decomposing the original table, and in the new tables, one we will be of Student(Std_ID, Professor_ID) and another will be professor(P_ID, Professor_name, Subject) and here ID and P_ID are PKs of their repsective tables! and now the FDs are, Std_ID -> P_ID & P_ID -> Professor_name and P_ID -> Subject... so we have optimized the tables by removing the problems which this table previously had!
--                                : We must not derive prime attribute from any prime or non-prime attribute.

-- Advantages of Normalization : Normalisation helps to minimise data redundancy.
--                             : Greater overall database organisation.
--                             : Data consistency is maintained in DB.

-- ----------------------------------------------------------------------- Lecture 12 : Transactions in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- What is a Transaction : Suppose there is a bank which has two accounts A and B, and ek transaction honi hai A to B, toh from user perspective it is just a single task, but from Db persepective it is divided into multiple tasks! like, Read(A) -> A = A-50 -> Write(A) -> Read(B) -> B=B+50 -> Write(B). so it took 6 steps to complete the transactions!
-- Now for a transaction to happen, all the 6 steps here should be atomic! means they all should be considered to be a single task! and if kahin pr bhi error aata hai toh uss transaction ko kro hi matt entirely!
-- It is a logical unit of work that contains one or more SQL statements. The result of all these statements in a transaction either gets completed successfully (all the changes made to the database are permanent) or if at any point any failure happens it gets rollbacked (all the changes being done are undone.)
-- Overall agar kahin pr bhi error aata hai suppose A=A-50 krke error aagya, toh ab jo amount A se deduct hua hai vo vapis A me add hojaye! this is called roll back!
-- Its like money can neither be created nor be destroyed! so jo integrity maintain rehni chahiye!

-- Jab bhi DB me koi bhi transaction hota hai toh vo ACID properties follow krti hai! and krni chahiye!
-- Lets see ACID Properties : A (Atomicity) C (Consistency) I (Isolation) D (Durability)
-- Lets discuss actually ho kya rha hai read and write me, so when we read(A), toh DB me jo A ka balance stored hai vo ek buffer memory me jaake copy ho jaata hai jab read(50) operation perform hota hai toh! and then vo operation hua A=A-50, so now write(A) me jo buffer me jo updated balance hai like suppose A was 1000 and -50 hoke ye 950 hogya, so write(A) krne pr 950 DB me actually jaake store hojayega! but jo aaj kal jo hum DB use krte hai usme original DB me jaake write nhi krta hai, hum ek alag se local buffer banaate hai usme store krte hai ye 950 and jab end me sab hojaye and ek commit operation hota hai, jab vo execute hojaye tab jaake main DB me store hota hai! but for now hum yhi maanenge ki jab write(A) kiya jaa rha hai tab Db me directly jaake store hojaa rhi hai value!

-- Now lets see the ACID properties in details...
-- Atomicity : Either all operations of transaction are reflected properly in the DB, or none are.
--           : Maanlo jo operations hai vo sab execute hote time beech me kahin error aajaye, suppose at write(A) toh iske baad toh mtlb ki A se 50 deduct hochuke hai pr B me reflect nhi honge! toh aise condition me it is imp ki sab kuch vapis roll back hojaye to the previous state! taaki DB me incnsistency generate na ho!
--           : So transaction ya to successful ho ya agar fail hojaye toh vapis roll back hojaye prev state pr, so what DB does is it maintains a old state and an intermeddiate state! and jab trabsaction fail hoti hai tab prev state pr rollback hojaati hai!
--           : Isme jo old state hai vo transaction management system uska record rakhta hai and then baaki jo operations hai vo sab ek temp memory pr ho rhi hoti hai, jab transaction fail hota hai toh system vapis isko old state pr le aata hai! aur agar sab sahi sahi chal jaata hai toh DB update hojaata hai!

-- Consistency : Integrity constraints must be maintained before and after transaction.
--             : DB must be consistent after transaction happens.
--             : Means jitna money yahaa se deduct hua hai utna hi dusri jagah add hona chahiye! and transaction hone se pehle and baad me jo sum of money hai dono parties ke beech vo same rehna chahiye!

-- Isolation : Now suppose there is a Banking system! and in it there can be multiple transactions T1 T2 T3 and T4, now if suppose you have initiated transaction from two different places, one is net banking and another is googlePay, so they both should be isolated and should not interfere each other and should execute concurrently! and koi data inconsistency introduce na kre! vo kaise hoga...
--           : Now suppose, we have T1(Google pay) and T2(Net Banking), now if dono transactions saath me shuru hogye! toh maanlo ek baar T1 ne A se 1000 read krliya and T2 ne bhi same time pr 1000 read krliya and uske baad T1 ne usme se -50 krdiya toh 950 bache, and uske baad T2 ne apne according bhi -50 krdiya 1000 me se toh usme bhi 950 bache, so mtlb ki B me 50+50 gye? mtlb ki A me 950 hi bache hai but B me 50 rupees extra aagye? ye kahaa se? so this is the inconsistency we are talking about! ki A se -50 hue but then B me 50+50 chale gye, so this will bring inconsistency! so that is why isolation is important!
--           : So mtlb ki isolation maintain krne ke liye hume dono me se koi ek transaction pehle execute krna hoga ab chaahe vo fail ho ya success uske baad hi dusra vaala transaction shuru hona chahiye!
--           : Even though multiple transactions may execute concurrently, the system guarantees that, for every pair of transactions Ti and Tj, it appears to Ti that either Tj finished execution before Ti started, or Tj started execution after Ti finished. Thus, each transaction is unaware of other transactions executing concurrently in the system.
--           : Multiple transactions can happen in the system in isolation, without interfering each other.

-- Durability : Suppose there is a T1 transaction and it is a success means all those steps are successful, then DB me vo updation permanent hojaye! event after system failures!
--            : Like suppose, koi ek transaction hai vo success hogya, and now write operation bhi perform hogya, pr uske baad system fail hogya! and iss kaaran se write operation perform hoke bhi DB me update nhi hui value, but user ko ye notify hogya ha ki transaction is a success, toh system me itni durability honi chahiye ki system jab restart ho tab vo write operation firse execute hojaye and DB update hojaye!
--            : Durabilty is assured by Recovery Management Component! Toh jab saare transaction execute hojaye successfully, toh main memory (RAM) me jaake accounts ka balance update hojaye! and then jab ye cheez DB me update hone jaa rhi ho tab hi system failure hojaye! then koi aisa mechanism hona chahiye ki like jab systrem restart ho tab kaise bhi vo main memory vapis retrieve hojaye and then DB update hojaye, so iske kuch tareeke hai jaise ki Log based recovery ki harr step ke transactions pr logs bante jayenge jiske according and ye logs kisi stable memory me store rahenge! taai system failures ke baad bhi logs dekh ke we could get back to that position jahaa saare operation hogye the success and bss DB update hona reh gya tha! we will study these logs in future...

-- States of Transaction in DBMS : Active State, Partially Committed State, Committed State, Terminated State, Failed State, Aborted State... for diagram refer the notes! 
--                               : Active State : The very first state of the life cycle of the transaction, all the read and write operations are being performed. If they execute without any error the T comes to Partially committed state. Although if any error occurs then it leads to a Failed state.
--                               : Partially Committed State : After transaction is executed the changes are saved in the buffer in the main memory. If the changes made are permanent on the DB then the state will transfer to the committed state and if there is any failure, the T will go to Failed state.
--                               : Committed State : When updates are made permanent on the DB. Then the T is said to be in the committed state. Rollback can’t be done from the committed states. New consistent state is achieved at this stage.
--                               : Terminated State : A transaction is said to have terminated if has either committed or aborted.
--                               : Failed State : When T is being executed and some failure occurs. Due to this it is impossible to continue the execution of the T.
--                               : Aborted State : When T reaches the failed state, all the changes made in the buffer are reversed. After that the T rollback completely. T reaches abort state after rollback. DB’s state prior to the T is achieved.


-- ----------------------------------------------------------------------- Lecture 13 : Implementing Atomicity and Durability --------------------------------------------------------------------------------------------------------------------------------->
-- Recovery Mechanism Component of DBMS supports atomicity and durability. and the two methods we are going to study for recovery mechanism comes under this...
-- One way of implementing it is Shadow Copy Scheme!
-- Now there is a Old DB Copy on disc! and then there is DB pointer on disc which is pointing at Old DB currently! then jo Old Db hai uski ek new copy banegi and ispr hum saare operations krenge! jo bhi transaction me krne hote hai! and then jab transaction complete hojaye then jo mechanism hai vo iss new copy ko Disc pr write krega! but still the transaction is not at committed state, isko hum committed state pr tab bolenge jab iska jo DB pointer hai vo old copy se hatt ke new copy pr point krne lage! means jab DB pointer updates to new disc location then the transaction will be at committed state! and the change is not persist!
-- ab agar maanlo jiss time pr system hum new copy bana rhe the tab hi system fail hojaye toh uss time toh DB pointer toh old copy pr hi point kr rha tha toh koi dikkat nhi hogi! and old DB pr hum vapis easily roll back kr sakte hai!
-- In formal way : 
-- Based on making copies of DB (aka, shadow copies).
-- Assumption only one Transaction (T) is active at a time.
-- A pointer called db-pointer is maintained on the disk; which at any instant points to current copy of DB.
-- T, that wants to update DB first creates a complete copy of DB.
-- All further updates are done on new DB copy leaving the original copy (shadow copy) untouched.
-- If at any point the T has to be aborted the system deletes the new copy. And the old copy is not affected.
-- If T success, it is committed as : OS makes sure all the pages of the new copy of DB written on the disk.
--                                  : DB system updates the db-pointer to point to the new copy of DB.
--                                  : New copy is now the current copy of DB.
--                                  : The old copy is deleted.
--                                  : The T is said to have been COMMITTED at the point where the updated db-pointer is written to disk.

-- Now lets see how the atomicity is maintained in here...
-- Agar transaction DB pointer change hone se pehle fail hojaati hai toh DB pointer toh old copy pr point pr point kr hi rha tha toh koi dikkat toh hai nhi! and jo new copy banai thi usko delete krdenge!
-- Hence, either all updates are reflected or none

-- Now lets see how the durability is maintained in here...
-- Suppose, system fails are any time before the updated db-pointer is written to disk. When the system restarts, it will read db-pointer & will thus, see the original content of DB and none of the effects of T will be visible.
-- T is assumed to be successful only when db-pointer is updated.
-- If system fails after db-pointer has been updated. Before that all the pages of the new copy were written to disk. Hence, when system restarts, it will read new DB copy.
-- Ab maanlo kya ptaa, ye jo time hai jisme DB pointer old copy se new copy ki taraf point krne jaa rha hoga, tab hi agar system fail hojaye tab? so jo DB pointer ke change hone vaala jo step hpta hai atomic hona chahiye aur vo atomic hota hai, iss kaaran se ya toh vo step hoga ya toh nhi hoga, it can never fail1 agar change nhi hota hai pointer tab toh old copy pr point kr hi rha hai, nhi toh agar success hogya toh new copy pr point krdega!

-- but this, Shadow Copy Scheme is very ineffecient! kyunki isme maanlo jo old DB copy hai already bhot badi hai, toh jab new copy banegi toh vo bhi utna hi space legi! and iss chakkar me itna space manage kr paana is a tough task!, so for that reason we use another method, that is Log Based Recovery Method!

-- Log Based Recovery Scheme! 
-- Toh isme hum basically jo bhi operations krte hai unke Logs store krte jaate hai! but ye logs hum kisi stable storage space me krte hai! kyunki agar uss hi space me krenge jisme DB ki copies store kr rhe hai toh agar system fail hua toh saare logs bhi udd jayenge! toh isliye inko hum kisi stable storage space me store krte hai!
-- The log is a sequence of records. Log of each transaction is maintained in some stable storage so that if any failure occurs, then it can be recovered from there. 
-- If any operation is performed on the database, then it will be recorded in the log.
-- But the process of storing the logs should be done before the actual transaction is applied in the database.
-- Like lets see what we mean... lets consider the same Transaction which we used earlier!
-- Transaction  |Logs
-- Read(A)      |<T,Start>
-- A=A-50       |<T,A,950> ye vaala log Write(A) and A=A-50 actually krne se pehle hi likh diya gya! so that hum pehle hi store krle log me ki hum krne kya vaale hai! and then uske baad vo step kre!
-- Write(A)     |<T,B,2050>
-- Read(B)      |<T,Commit> Here the transaction ends!
-- B=B+50       |
-- Write(B)     |

-- Now this Log based recovery is done in 2 ways, 1) Deferred DB Modifications 2) Immediate DB Modifications
-- Deferred DB Modifications : Ensuring atomicity by recording all the DB modifications in the log but deferring the execution of all the write operations until the final action of the T has been executed. mtlb isme hum saare jo modifications and updations hai jo krne hai vo sab hum log me store krdenge and then uske baad actual execution krenge!
--                           : Log information is used to execute deferred writes when T is completed.
--                           : Now isse fayeda kya hai ki agar Transaction fail hogyi ya user ne abort krdiya, toh saare logs ko ignore krdiya jayega! jab tak logs me commit state na aajaye, tab tak DB me updation nhi hoga!
--                           :  If T completes, the records associated to it in the log file are used in executing the deferred writes.
--                           : Ab agar last me jab DB me modification ke time system fail ya koi dikkat aagyi! toh iss case me hum vo saare logs redo krenge! mtlb vo saare logs hi vapis se execute krenge!
--                           : Isme jo humne upar discuss kiye the logs vaise hi bante hai

-- Immediate DB Modification : DB modifications are done in the active state! mtlb ki transactions abhi chal rhi hai and jab chal rhi hai uss hi time pr hum DB me modifications krte chale jayenge! DB modifications to be output to the DB while the T is still in active state.
--                           : Mtlb jo bhi operations kr rhe hai unke saath saath hi Logs create krte gye and then and there hi DB me modifications bhi krte gye!
--                           : Isme logs thore alag type se bante hai, like pehle vaale me 3 fields the, iss vaale me 4 hoti hai! and the logs are like....

-- Transaction  |Logs
-- Read(A)      |<T,Start>
-- A=A-50       |<T,A,1000,950> here we have both old value field and new value fields!
-- Write(A)     |<T,B,2000,2050>
-- Read(B)      |<T,Commit> Here the transaction ends!
-- B=B+50       |
-- Write(B)     |
--                           : In here, if system fails or crashes, system uses old value field of the log records to restore modified values.
--                           : Actual updations logs likhne ke baad hi krte hai! agar updations pehle krdiya and vo updatio failhogya toh usko hum log me likh hi nhi payenge and due to which hum recovery nhi kar payenge!
--                           : Failure handling : System failure before T completes, or if T aborted, then old value field is used to undo the T. ab agar maanlo jab saara transaction complete hogya and ab agar system crash ho jaata hai but user ko notify hogya hai ki transaction is success then in that case ye jo mechanism hai ye saare logs ko firse visit krega and check krega ki kya jo logs the vo end me commit state tak phocha tha ya nhi, agar haa toh ye mechanism saare logs ko firse execute krdega! and nhi ki toh baat hi nhi hai, kynki agar user ko notify hua hai ki transaction is success toh ofc commit hua hoga!


-- ----------------------------------------------------------------------- Lecture 14 : Why Indexing is Important in DBs --------------------------------------------------------------------------------------------------------------------------------->
-- So what happens here is like jo DB me jo data store hota hai vo toh hum tuple ke form me store kr rhe hai RDBMS me, so jab hum unko access krne jaate DBMS ke thru toh ab itni saari tuples hoti hai toh thora time zyada lag sakta hai! toh in that case, what we do is to optimize this index ke through tuples access krne vaali cheez, we make groups/blocks of tuples with each block containing same number number of tuples, and harr block ka ek block pointer/base pointer hota hai usko hum ek alag se index naam se table bnaa ke store krdete hai! taaki jab next time hume DB access krna ho toh hum vo index table me se vo index DB ke jiss base pointer pr point kr rha hai vahaa jaake hum vo tuple fetch kr sake!
-- Lets understand this more deeply....
-- Suppose a DB of 10,000 records! and we have created blocks and each block contains 10 tuples! now so agar hume abhi search krna koi particular tuple jo kisi PK se associated hoga, toh hum Linear Search krenge and vo tuple nikal lenge!
-- Ab we now PK toh sorted hoti hai toh we can also apply Binary Search, jo aur better Time Complexity ke saath output dega!
-- But kya ye process aur optimize ho sakta hai? yess... we can use a Data Structure INDEX, isme what we will do is we will create another table jisme we will use all PKs with intervals of 10 (jitne blocks me tuples hai uske hisaab se) and now jo harr block jo humne banai thi uske Base pointer ko hum iss index vaali table me store krdenge! like INDEX me like first tuple kuch aise hogi ki, (1,BP1) (11,BP2) (21,BP3) and so on...
-- and now ab ye jo nayaa table hai isme tuples kaafi kam hogyi agar dekhe toh, original DB me 10,000 thi iss vaali me 1000 hogyi hai! toh ab hum iss Index vaali table me bhi Binary search ya Linear Search lagaa sakte hai! vaise toh optimize ho hi gya tha, but ab agar hum binary search bhi lgaa de toh aur optimize hojayega! ab agar maanlo hume 15 tuple chahiye DB ki, toh hum pehle INDEX ki 11 vaali primary key pr jayenge and usme BP2 stored hai, toh uski help se hum DB me BP2 pr pohochenge, mtlb ki ab hum DB ke 11 position pr hai, now hum 4 tuples aage traverse krke 15 tuple tak pohoch jayenge!
-- So that is how we have optimized the access to DB!

-- Formally...
-- Indexing is used to optimise the performance of a database by minimising the number of disk accesses required when a query is processed.
-- The index is a type of data structure. It is used to locate and access the data in a database table quickly.
-- Speeds up operation with read operations like SELECT queries, WHERE clause etc.
-- Search Key: Contains copy of primary key or candidate key of the table or something else.
-- Data Reference: Pointer holding the address of disk block where the value of the corresponding key is stored.
-- Indexing is optional, but increases access speed. It is not the primary mean to access the tuple, it is the secondary mean.
-- Index file is always sorted.

-- Types of Indexing : 1) Primary Indexing & 2) Secondary Indexing
-- 1) Primary Indexing : A file may have several indices, on different search keys. If the data file containing the records is sequentially ordered, a Primary index is an index whose search key also defines the sequential order of the file.
--                     : Yahaa primary indexing me primary key ka mtlb primary key se nhi hai, hum kisi bhi ek attribute ko primary index bnaa sakte hai! mtlb PK bhi ho sakti hai Search key ya primary index, but it is not neccessary!
--                     : All files are ordered sequentially on some search key. It could be Primary Key or non-primary key.
--                     : Dense And Sparse Indices... Dense Index : The dense index contains an index record for every search key value in the data file.
--                                                   Sparse Index : An index record appears for only some of the search-key values.
--                     : Jo humne upar jo example liya tha, usme jo DB hai usme Dense indexing ki hui hai and jo INDEX vaali table hai usme Sparse Indexing ki hui hai!
--                     : Now lets see the Primary Indexing based on Key Attributes and based on Non-Key Attribute...
--                     : Based on Key Attribute : Data file is sorted w.r.t primary key attribute.
--                                              : PK will be used as search-key in INDEX.
--                                              : parse Index will be formed i.e., no. of entries in the index file = no. of blocks in datafile.
--                     : Based on Non-Key Attribute (Clustering Indexing) : Data file is sorted w.r.t non-key attribute.
--                                                                        : No. Of entries in the index = unique non-key attribute value in the data file.
--                                                                        : This is dense index as, all the unique values have an entry in the index file.
--                                                                        : here this is also called, Clustering Indexing!
--                                                                        : Isme jo humara DB hai vo kisi Non-key attribute ke bal ke sorted hai, toh mtlb ki jo vo particular attribute hai uski values duplicate bhi ho sakti hai, ab as we have discussed! there are two tables ek toh jo DB vaali table hai and ek humari vo INDEX vaali table hai! ab maanlo jaise jo main DB vaali table hai usme toh ye key values toh repeat ho rhi hongi! but in a sorted manner! and humne iss DB vaale table me blocks bnaa rakhe hai! so now hum INDEX table ko aise use krenge ki, jaise maanlo DB table me multiple 1 ke corresponding alag alag values hai! toh hum sabse pehli baar jab 1 (non-key attribute) occur hua tha usko lenge! and usko as a primary index INDEX table me daal denge!
--                                                                        : Then, uss first 1 ke along jo base pointer hai usko INDEX table me uss PK vaale 1 ke corresponding store krdenge! and now ab hum iss index table me jo 1 ke corresponding jo BP store hai ke through uss main DB me tuples me se value nikalenge! and agar maanlo humne jo first occurence vaala 1 store kiya hai INDEX table me uske corresponding jo BP store hai and vo BP jiss tuple pr point kr rha hai hume vo vaale 1 ki value nhi chahiye toh in that case hum uss BP ko ++ krte krte required 1 tak pohochenge! and as it is sorted DB table toh saare 1 saath me hi honge! and so similarly we will do with other indexes also!
--                                                                        : Iski need hume padti hi group by me, kyunki uss case me hum kaafi baar non-kety attribute ke dam pr hi indexing krte the!
--                                                                        : So in short! what we will do we will take the non-key attributes of DB tables and make them a PK in an INDEX table! and corresponding to them we will store base pointers of all first occurence of those distinct non-key attributes with those PKs in INDEX table! so that we can access the main DB table using the INDEX table using those BPs! and then later on we can applu Binary search in the DB table as it sorted also! to get a more optimized solution!
--                                                                        : And that is why it is called Clustering indexing becoz it is forming clusters of same indexes in the DB table!
--                     : Multi-Level Indexing : Index with two or more levels.
--                                            : If the single level index become enough large that the binary search it self would take much time, we can break down indexing into multiple levels.
--                                            : It is not very different, it more or less similar to the above, bss isme ye hai ki hum kuch aur layers add krdete hai indexing ke jab lage ki ek indexing se bhi binary search ke through bhi time zyada hi lag rha hai! kyunki tuples itne large hogye hai! ki even Binary search is taking lot of time!
--                                            : So we will keep indexing according to the effeciency and time! agar required hoga toh we will keep increasing the number of indexings! 

-- 2) Secondary Indexing : It is done on those datafiles which are unsorted! toh aisa kab hoga ki tables unsorted hai! toh jab table agar kisi ek attribute ke along sorted hai toh kisi aur attribute ke along to unsorted hogi!
--                       : Toh aisa situation tab aata hai, jaise lets see a situation, where ek table hai DB me vo kisi ek attribute ke along pimary indexing ke through sorted hai! toh ofc kisi aur attribute ke along vo unsorted hoga! toh jab ek primary indexing already exist kr rhi hai table me! and hume kisi aur attribute ke along sorting lagaani pad rhi hai toh in that case we use secondary indexing!
--                       : And isme search key (INDEX table vaali) PK and Non-PK dono ho sakti hai! now, jo DB table hai usme saari entries ke indexes un-sorted hai and duplicate values bhi ho sakti hai same keys ki, toh agar hum maanlo jaise DB table me kisi ek tuple ka index 1 hai, but ab hume ye nhi pataa rehta ki vo 1 kahaa hai, vo 1 first block me hai ya kisi aur block me hai, ya iss index ki kitni duplicate values hai (as becoz iss iss attribute me duplicate values ho sakti hai kyunki ye hai toh ek non-key attribute),
--                       : toh for that case hum unn saari unique DB vaale indexes ko ek INDEX vaali table me daalke unn harr blocks ke base pointer pr point kraa denge! isse kya hoga ki jab hum INDEX vaali table ke through kisi particular block ke base pointer tak pohochenge, and then vahaa pr jaake ab Binary Search ya Linear Search lgaa ke vo vaali index nikal lenge! and agar aisi aur bhi duplicate indexes hai toh vo sab indexes jin jin block me hai unn sab blocks ka base pointer INDEX table me linkedlist bnaa ke store krlenge!  
--                       : So we can see isme hum Dense indexing kr rhe hai kyunki hum harr unn DB ke unique indexes ko search key bnaa ke INDEX vaale table me store rhe hai! and unke corresponding unke blocks ke base pointers ko Linkedlist bnaa kr store kr rhe hai!
--                       : So that is how secondary indexing is used in case of indexing of non-key attributes! also isme bhi hum multil-level indexing kr sakte hai!
--                       : How does it benefit? so what happens is pehle DB vaale table me normal indexing thi along non-key attributes and vo bhi unsorted manner me! so agar kuch 1 lakh entries hoti toh hume linear search krnaa padta ek particular entry ko dhundne ke liye! and isme bhot time lgta! aur Binary search toh lagaa nhi sakte kyunki sorted toh hai nhi ye! but secondary indexing krne pr ab hum secondary table mtlb vo INDEX vaali table uss par hum Binary Search lgaa sakte hai! kyunki usme index sorted hai! and that is how we have optimized indexing here!
--                       : In formal language : Datafile is unsorted. Hence, Primary Indexing is not possible.
--                                            : Can be done on key or non-key attribute.
--                                            : Called secondary indexing because normally one indexing is already applied.
--                                            : No. Of entries in the index file = no. of records in the data file.
--                                            : It's an example of Dense index.


-- ----------------------------------------------------------------------- Lecture 15 : SQL vs NoSQL --------------------------------------------------------------------------------------------------------------------------------->
-- NoSQL is Non-Relational Model! It means not only SQL, means zaruri nhi ki DB ko access krne ke liye hum SQL ka hi sahara le! hum Non-relational lang ka bhi use kr sakte hai! a good example is MongoDB!
-- The NoSQL languages are used to work on non-relational DBs!
-- NoSQL databases (aka "not only SQL") are non-tabular databases and store data differently than relational tables. NoSQL databases come in a variety of types based on their data model. The main types are document, key-value, wide-column, and graph.

-- SQL : Works on Structured data, has constraints and has a fixed schema!
-- NoSQL : Works on Structured + Semi-Structured + Un-Structured Data! all of them! also this is more flexible! maanlo kisi student ki info store krni hai but we dont have all the details! then in that case this flexible schema helps! example of unstructured data : Some text files, some chats that we do on social media platforms and some emails, harr kisi ka email likhne ka style alag hota hai! so that is why these are all unstructured data!
--       : Now NoSQL me vertical and horizontal scaling dono practically possible hoti hai! kr sakte SQL me bhi hai but jo practically jo ki jaati hai scaling vertically and horizontally both, that is done in NoSQL!
--       : They are schema free.
--       : Data structures used are not tabular, they are more flexible, has the ability to adjust dynamically.
--       : Can handle huge amount of data (big data).
--       : Most of the NoSQL are open sources and has the capability of horizontal scaling.
--       : It just stores data in some format other than relational.

-- History of NoSQL
-- NoSQL databases emerged in the late 2000s as the cost of storage dramatically decreased. Gone were the days of needing to create a complex, difficult-to-manage data model in order to avoid data duplication. Developers (rather than storage) were becoming the primary cost of software development, so NoSQL databases optimised for developer productivity.
-- Data becoming unstructured more, hence structuring (defining schema in advance) them had becoming costly. 
-- NoSQL databases allow developers to store huge amounts of unstructured data, giving them a lot of flexibility.
-- Recognising the need to rapidly adapt to changing requirements in a software system. Developers needed the ability to iterate quickly and make changes throughout their software stack — all the way down to the database. NoSQL databases gave them this flexibility.
-- Cloud computing also rose in popularity, and developers began using public clouds to host their applications and data. They wanted the ability to distribute data across multiple servers and regions to make their applications resilient, to scale out instead of scale up, and to intelligently geo-place their data. Some NoSQL databases like MongoDB provide these capabilities.

-- Data Modelling in NoSQL vs SQL
-- In case of SQL, data is stored in form of rows and columns and we know kaise usme normalization applied rehti hai taaki data redudancy na ho! and so on and so forth wahtever we have studied till now!
-- in case of NoSQL data is stored in form of Key Value pairs, like we know about JSON files usme hum JavaScript ki help se data ko key value pairs ke form me store rakhte hai!

-- Now lets see some advantages of NoSQL
-- Flexible Schema : RDBMS has pre-defined schema, which become an issue when we do not have all the data with us or we need to change the schema. It's a huge task to change schema on the go.
-- Horizontal Scaling : Now the thing is, here we will understand the whole concept of scaling in SQL and NoSQL, so the thing is Scaling is increaing the efficiency or upgrading the system or the hardware so that we can retrieve the information more effectively!
--                    : Now scaling are of two types Vertical and Horizontal, In case of vertical scaling, jaise maanlo ek DB hai ab hum usme hi storage badhaate jaa rhe hai rows badhaate jaa rhe hai and RAM badhaate jaa rhe hai, CPU badhaate jaa rhe hai! in that case that is vertical scaling! after some point it becomes costly kyunki kab tak hi hum RAM ya Hardware ya CPU badhaate jayenge! so for that we have Horizontal Scaling, isme kya hota hai ki jaisehumare paas bhot saara data hai toh unn sab data ko ek hi DB pr store krne se better hai ki usko multiple DBs pr store krdo! this is horizonatly scaling, and then unn sab DBs pr individualy vertical scaling apply krdo! isse ye thora cost effiecient bhi hoga and fast retrieval of information bhi hoga! horizontal scaling means load share krna!
--                    : So in SQL we use Vertical Scaling and in NoSQL we use both types of scaling! and that is why NoSQL is fast kyunki usme dono tarah ki scaling practical hoti hai!
--                    : In SQL also horizontal scaling is possible but it is not practical! kyunki in SQL if a system stores has a DB and agar horizontal scaling krenge toh multiple system lagenge multiple DBs ko store krne me! and jab data retrieve krne ki baari ayegi toh ofc we will apply joins! so ab pehle toh data jo different DBs pr stored hai aur vo DBs jo different systems (server) pr stored hai toh pehle toh vo network ke thru ek system pr ayenge which will take time and then jab vo saara data aajaye uske baad unpr joins apply honge! jisme bhi time lagega and then uske baad data retrive krne me toh fir kaafi time lag jayega! and in the present times jahaa pr we want speed, storage ki itni chinta nhi hai we prefer NoSQL over SQL becoz of this factor!
--                    : In NoSQL, horizontal scaling is practical becoz isme hum JSON files ke formal me store kr rhe hai data toh even agar horizontal scaling lgaa ke data retrive krne ke try krenge it will be faster kyunki isme koi joins nhi honge, na koi relations honge kisi tables ke beech me! toh it will be fast in retriving information!
--                    : Horizontal Scaling is called Scale Out and Vertical Scaling is called Scale Up
--                    : In formal language, Horizontal scaling, also known as scale-out, refers to bringing on additional nodes to share the load. This is difficult with relational databases due to the difficulty in spreading out related data across nodes. With non-relational databases, this is made simpler since collections are self-contained and not coupled relationally. This allows them to be distributed across nodes more simply, as queries do not have to “join” them together across nodes. 
--                    : Scaling horizontally is achieved through Sharding OR Replica-sets.
-- High Availability : NoSQL databases are highly available due to its auto replication feature i.e. whenever any kind of failure happens data replicates itself to the preceding consistent state.
--                   : If a server fails, we can access that data from another server as well, as in NoSQL database data is stored at multiple servers.
-- Easy insert and read operations : Queries in NoSQL databases can be faster than SQL databases. Why? Data in SQL databases is typically normalised, so queries for a single object or entity require you to join data from multiple tables. As your tables grow in size, the joins can become expensive. However, data in NoSQL databases is typically stored in a way that is optimised for queries. The rule of thumb when you use MongoDB is data that is accessed together should be stored together. Queries typically do not require joins, so the queries are very fast.
-- Caching Mechanism
-- NoSQL use case is more for Cloud Applications!

-- When to use NoSQL?
-- Fast-paced Agile development : Jaise jab TikTok ban hua tha toh Instagram ne very fast paces me Reels vaala feature le aaye the apne app pr! this is example of Fast paced development!
-- Storage of structured and semi-structured data
-- Huge volumes of data
-- Requirements for scale-out architecture
-- Modern application paradigms like micro-services and real-time streaming.

-- NoSQL DB Misconceptions
-- Relationship data is best suited for relational databases : A common misconception is that NoSQL databases or non-relational databases don’t store relationship data well. NoSQL databases can store relationship data — they just store it differently than relational databases do. In fact, when compared with relational databases, many find modelling relationship data in NoSQL databases to be easier than in relational databases, because related data doesn’t have to be split between tables. NoSQL data models allow related data to be nested within a single data structure.
-- NoSQL databases don't support ACID transactions. aisa nhi hai pehle aisa hota tha, but ab some NoSQL databases like MongoDb uses this ACID properties!

-- Types of NoSQL Data Models
-- Key-Value Stores : The simplest type of NoSQL database is a key-value store. Every data element in the database is stored as a key value pair consisting of an attribute name (or "key") and a value. In a sense, a key-value store is like a relational database with only two columns: the key or attribute name (such as "state") and the value (such as "Alaska").
--                  : Use cases include shopping carts, user preferences, and user profiles.
--                  : e.g., Oracle NoSQL, Amazon DynamoDB, MongoDB also supports Key-Value store, Redis.
--                  : A key-value database associates a value (which can be anything from a number or simple string to a complex object) with
--                  : a key, which is used to keep track of the object. In its simplest form, a key-value store is like a dictionary/array/map object as it exists in most programming paradigms, but which is stored in a persistent way and managed by a DBMS.
--                  : Key-value databases use compact, efficient index structures to be able to quickly and reliably locate a value by its key, making them ideal for systems that need to be able to find and retrieve data in constant time.
--                  : There are several use-cases where choosing a key value store approach is an optimal solution : Real time random data access, e.g., user session attributes in an online application such as gaming or finance.
--                                                                                                                 : Caching mechanism for frequently accessed data or configuration based on keys.
--                                                                                                                 : Application is designed on simple key-based queries.
-- Column-Oriented / Columnar / C-Store / Wide-Column : The data is stored such that each row of a column will be next to other rows from that same column.
--                                                    : While a relational database stores data in rows and reads data row by row, a column store is organised as a set of columns. This means that when you want to run analytics on a small number of columns, you can read those columns directly without consuming memory with the unwanted data. Columns are often of the same type and benefit from more efficient compression, making reads even faster. Columnar databases can quickly aggregate the value of a given column (adding up the total sales for the year, for example). Use cases include analytics.
--                                                    : Like suppose you have a data in form of rows and columns like there are three attributes Name City and Age, and imagine name ke under 2 rows hai where Utkarsh and Palak is stored, then under City there are 2 rows where Delhi and Lucknow is stored an then under age there are 2 rows where 22 and 20 is stored! now ye toh hogyi row and column way of storing data! now ab yhi data ab jab memory me store hota hai SQL ke through toh vo ofc aise rows and columns ke form me toh nhi hota toh ye Row wise store hota hai at the very basic level! toh vo aise dikhega, [Utkarsh|Delhi|22|Palak|Lucknow|20] isme har memory location ka alag alag memory address hoga jo uske data type pr depend krega ki vo memory location kitna space leta hai!...
--                                                    : Now upar vaale hi example me agar hum Column wise store krne ki koshish kre toh ye kuch aise hoga ki, [Utkarsh|Palak|Delhi|Lucknow|22|20], so yahaa column wise data store hua memory me! but now if we see in the row wise approach agar hum koi data add krna hai toh vo ek normaly Linkedlist ke through add krdenge kyunki usme ek particular insaan ka data ek saath hai! but agar hum column wise approach me koi changes krne ki koshish kre toh hume uss memory ke beech me kahin insert krna hoga, jaise agar ek aur name add krna hua Paresh then in that case hume row wise approach me toh chalo normally iss Paresh entity ka saara data laake ek node daal ke Linkedlist ke tail pr append krdenge! but in case of Column wise approach hume uss memory location me se Palak and Delhi ke beech ka link todna oadega and then koi value add hogi and similarly hume 3 baar in total vo memory location ko todna hoga! taaki Paresh ke corresponding saari values add ho sake! Hence this is a slow process! So it is understood that even through all this advantages, still in NoSQL read operations are faster than SQL but Write and Update and Delete operations are slow, reason aapke saamne!
--                                                    : So before using NoSQL, we first check our use case ki kya humare use case me Write Update Delete operations ke fast hone ki zarurat hai, agara haa toh NoSQL is not preferable! but agar sirf read operations fast hona hai toh koi dikkat nhi hai! we can use NoSQL!
--                                                    : Fayeda isme ye bhi hai ki maanlo ki hume average age nikalni ho kisi insaan ki upar vaale example me toh we will just normally go to a particular node jahaa se age store hona shuru hui hai and then vahaa se saari values ka average nikal lenge! but in case of SQL as we know, pehle hum vo saari rows select krte hai and then usme se jinn columns ka kaa nhi hai unko remove krte hai and then bachi hui rows ka average nikalte hai!s oyes isme ek jagah analytics me kaafi fast kaam krti hai NoSQL, so NoSQL is prefered when you need fast analytics! or fast read operations! 
-- Document Based Stores : Here comes the use of JSON files! use to transfer data here and there on web!
--                       : This DB store data in documents similar to JSON (JavaScript Object Notation) objects. Each document contains pairs of fields and values. The values can typically be a variety of types including things like strings, numbers, booleans, arrays, or objects!
--                       : Use cases include e-commerce platforms, trading platforms, and mobile app development across industries.
--                       : Supports ACID properties hence, suitable for Transactions.
--                       : e.g., MongoDB, CouchDB.
-- Graph Based Stores : So here the data is stored in form of Nodes which are Vertices and Edges which are Relationships! Nodes contains the information about the entity and Edges contains their relationship! A good example can be Friend feature in Facebook! like kon kiska friend hai ye kaafi easily and easy to understand way me store ki jaa sakti hai graph based structure se!
--                    : A graph database focuses on the relationship between data elements. Each element is stored as a node (such as a person in a social media graph). The connections between elements are called links or relationships. In a graph database, connections are first-class elements of the database, stored directly. In relational databases, links are implied, using data to express the relationships!
--                    : A graph database is optimised to capture and search the connections between data elements, overcoming the overhead associated with JOINing multiple tables in SQL.
--                    : Very few real-world business systems can survive solely on graph queries. As a result graph databases are usually run alongside other more traditional databases.
--                    : Use cases include fraud detection, social networks, and knowledge graphs.

-- NoSQL Disadvantages : Data Redundancy, jo cheeze SQL me kab space me store ho jaa rhi thi vo yahaa kaafi space lengi!
--                     : Since data models in NoSQL databases are typically optimised for queries and not for reducing data duplication, NoSQL databases can be larger than SQL databases. Storage is currently so cheap that most consider this a minor drawback, and some NoSQL databases also support compression to reduce the storage footprint.
--                     : Update & Delete operations are costly.
--                     : All type of NoSQL Data model doesn’t fulfil all of your application needs. Depending on the NoSQL database type you select, you may not be able to achieve all of your use cases in a single database. For example, graph databases are excellent for analysing relationships in your data but may not provide what you need for everyday retrieval of the data such as range queries. When selecting a NoSQL database, consider what your use cases will be and if a general purpose database like MongoDB would be a better option.
--                     : Doesn’t support ACID properties in general.
--                     : Doesn’t support data entry with consistency constraints.

--                                                   SQL                         vs                      NoSQL
-- Data Storga Model        ->   Fixed Rows and Columns                          |   Document Based like JSON, Key Value Pairs, Column Store and Graph Based
-- Development History      ->   Developed in the 1970s with a                   |   Developed in the late 2000s with a focus on scaling and allowing for rapid application change driven by agile and DevOps practices.
--                               focus on reducing data duplication.             |   
-- Examples                 ->   Oracle, MySQL, Microsoft SQL Server and more    |   Document based : MongoDB & CouchDB, Key-value Pairs : Redis & Dynamo DB, Column Store : Kasandra & HBase, Graph Based : Amazon Neptune & Neo4J.
-- Primary Purpose          ->   General Purpose                                 |   Document : General purpose, Key-Value Pairs : large amounts of data with simple lookup queries, Column Store : Large amount of data with with predictable query patterns, Graph : analyzing and traversing analysing relationships between connected data!
-- Schema                   ->   Fixed                                           |   Flexible
-- Scaling                  ->   Vertical                                        |   Horizontal
-- ACID Properties          ->   Supported                                       |   Not Supported except DBs like MongoDB!
-- JOINS                    ->   Typically Required                              |   Typically not required!
-- Data to Object Mapping   ->   Required object relational mapping              |   Many do not require ORMs. MongoDB documents map directly to data structures in most popular programming languages!

-- ----------------------------------------------------------------------- Lecture 16 : Types of Databases --------------------------------------------------------------------------------------------------------------------------------->
-- Relational Databases : Relational databases are quite popular, even though it was a system designed in the 1970s. Also known as relational database management systems (RDBMS), relational databases commonly use Structured Query Language (SQL) for operations such as creating, reading, updating, and deleting data. Relational databases store information in discrete tables, which can be JOINed together by fields known as foreign keys. For example, you might have a User table which contains information about all your users, and join it to a Purchases table, which contains information about all the purchases they’ve made. MySQL, Microsoft SQL Server, and Oracle are types of relational databases.
--                      : They are ubiquitous, having acquired a steady user base since the 1970s
--                      : They are highly optimised for working with structured data.
--                      : They provide a stronger guarantee of data normalisation
--                      : They use a well-known querying language through SQL
--                      : Scalability issues (Horizontal Scaling).
--                      : Data become huge, system become more complex.

-- Object oriented databases : The object-oriented data model, is based on the object-oriented-programming paradigm, which is now in wide use. Inheritance, object-identity, and encapsulation (information hiding), with methods to provide an interface to objects, are among the key concepts of object-oriented programming that have found applications in data modelling. The object-oriented data model also supports a rich type system, including structured and collection types. While inheritance and, to some extent, complex types are also present in the E-R model, encapsulation and object-identity distinguish the object-oriented data model from the E-R model.
--                           : Sometimes the database can be very complex, having multiple relations. So, maintaining a relationship between them can be tedious at times.
--                           : In Object-oriented databases data is treated as an object.
--                           : All bits of information come in one instantly available object package instead of multiple tables.
--                           : Adavantages : Data storage and retrieval is easy and quick.
--                                         : Can handle complex data relations and more variety of data types that standard relational databases.
--                                         : Relatively friendly to model the advance real world problems
--                                         : Works with functionality of OOPs and Object Oriented languages.
--                           : Disadvantages : High complexity causes performance issues like read, write, update and delete operations are slowed down.
--                                           : Not much of a community support as isn’t widely adopted as relational databases.
--                                           : Does not support views like relational databases.
--                                           : e.g., ObjectDB, GemStone etc.

-- NoSQL Databases : NoSQL databases (aka "not only SQL") are non-tabular databases and store data differently than relational tables. NoSQL databases come in a variety of types based on their data model. The main types are document, key-value, wide-column, and graph. They provide flexible schemas and scale easily with large amounts of data and high user loads.
--                 : They are schema free.
--                 : Data structures used are not tabular, they are more flexible, has the ability to adjust dynamically.
--                 : Can handle huge amount of data (big data).
--                 : Most of the NoSQL are open sources and has the capability of horizontal scaling.
--                 : It just stores data in some format other than relational.
--                 : Refer Lec 15 Notes...

-- Hierarchial Databases : As the name suggests, the hierarchical database model is most appropriate for use cases in which the main focus of information gathering is based on a concrete hierarchy, such as several individual employees reporting to a single department at a company.
--                       : The schema for hierarchical databases is defined by its tree-like organisation, in which there is typically a root “parent”  directory of data stored as records that links to various other subdirectory branches, and each subdirectory branch, or child record, may link to various other subdirectory branches.
--                       : The hierarchical database structure dictates that, while a parent record can have several child records, each child record can only have one parent record. Data within records is stored in the form of fields, and each field can only contain one value. Retrieving hierarchical data from a hierarchical database architecture requires traversing the entire tree, starting at the root node.
--                       : Since the disk storage system is also inherently a hierarchical structure, these models can also be used as physical models.
--                       : The key advantage of a hierarchical database is its ease of use. The one-to-many organisation of data makes traversing the database simple and fast, which is ideal for use cases such as website drop-down menus or computer folders in systems like Microsoft Windows OS. Due to the separation of the tables from physical storage structures, information can easily be added or deleted without affecting the entirety of the database. And most major programming languages offer functionality for reading tree structure databases.
--                       : The major disadvantage of hierarchical databases is their inflexible nature. The one-to-many structure is not ideal for complex structures as it cannot describe relationships in which each child node has multiple parents nodes. Also the tree-like organisation of data requires top-to-bottom sequential searching, which is time consuming, and requires repetitive storage of data in multiple different entities, which can be redundant.
--                       : e.g., IBM IMS.
--                       : So what its like is, suppose there is an orgamization, so there is a hierarchy is like ye chairperson hai ye vice chairperson hai and similarly kon kiske under hai kon konsa department handle krta hai and all these info is stored in form of Hierarchy database!

-- Network Database : Extension of Hierarchical databases
--                  : The child records are given the freedom to associate with multiple parent records.
--                  : Organised in a Graph structure.
--                  : Can handle complex relations.
--                  : Maintenance is tedious.
--                  : M:N links may cause slow retrieval.
--                  : Not much web community support.
--                  : e.g., Integrated Data Store (IDS), IDMS (Integrated Database Management System), Raima Database Manager, TurboIMAGE etc.

-- ----------------------------------------------------------------------- Lecture 17 : Clustering in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- Clustering/Replica-Sets : Suppose there is a DB of Amazon and then there are millions of requests that are coming on that DB then it becomez very tough to full fill all those requests! and maanlo agar vo DB me koi khrabi aagyi ya vo hack hogya ya koi maintainence krni pad gyi! toh jo users uss DB se data retrieve krne ki koshih kr rhe the unko vo data nhi milega fir!
--                         : Isliye what we do is we make replicas of the DB, like we create more DBs with exact same data in them! and that groups of DBs carrying the same info is called Clusters! or Replica-Sets! isse kya hoga ki agar koi ek DB down hota hai toh baaki users baaki DBs ke through apna Data access kr payenge! users ko isse mtlb nhi ki unka data kahaa se aa rha hai konse DB se aa rha hai all they need is Data so, inn sab se ek Abstraction ki layer bhi ajaati hai!
--                         : More Formally, Database Clustering (making Replica-sets) is the process of combining more than one servers or instances connecting a single database. Sometimes one server may not be adequate to manage the amount of data or the number of requests, that is when a Data Cluster is needed. Database clustering, SQL server clustering, and SQL clustering are closely associated with SQL is the language used to manage the database information.
--                         : Replicate the same dataset on different servers.

-- Advantages : Data Redudancy : Yes redudancy is not always bad, also it is not that type of Redudancy ki ek hi DB pr multiple rows me same hi data stores hai! its like different DBs pr same data stored hai taaki koi ek server ya DB khrab hota hai toh dusre vaale server jahaa same data stored hai vahaa se data access kr sakte hai!
--                             : Formally, Clustering of databases helps with data redundancy, as we store the same data at multiple servers. Don’t confuse this data redundancy as repetition of the same data that might lead to some anomalies. The redundancy that clustering offers is required and is quite certain due to the synchronisation. In case any of the servers had to face a failure due to any possible reason, the data is available at other servers to access.
--            : Load Balancing : or scalability doesn’t come by default with the database. It has to be brought by clustering regularly. It also depends on the setup. Basically, what load balancing does is allocating the workload among the different servers that are part of the cluster. This indicates that more users can be supported and if for some reasons if a huge spike in the traffic appears, there is a higher assurance that it will be able to support the new traffic. One machine is not going to get all of the hits. This can provide scaling seamlessly as required. This links directly to high availability. Without load balancing, a particular machine could get overworked and traffic would slow down, leading to decrement of the traffic to zero.
--                             : Load jo pehle ek DB pr lag rha tha ab vo multiple DBs pr spread hogya!
--            : High Availabilty : When you can access a database, it implies that it is available. High availability refers the amount of time a database is considered available. The amount of availability you need greatly depends on the number of transactions you are running on your database and how often you are running any kind of analytics on your data. With database clustering, we can reach extremely high levels of availability due to load balancing and have extra machines. In case a server got shut down the database will, however, be available.
--                               : Agar multiple DBs pr data stored rahega toh data easily available hoga!

-- How does clustering work? In cluster architecture, all requests are split with many computers so that an individual user request is executed and produced by a number of computer systems. The clustering is serviceable definitely by the ability of load balancing and high-availability. If one node collapses, the request is handled by another node. Consequently, there are few or no possibilities of absolute system failures.
-- Try to study Content Delivery Network while revising in brief!

-- ----------------------------------------------------------------------- Lecture 18 : Partitioning and Sharding in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- Suppose you have data and uss data ko store krna easy kon krta hai? DBMS! but now maanlo ab vo jo data hai vo bhott hi zyada amount me hai! aisa tab hota hai jab humara jo software hai uska purpose bhot bade large mass ko serve krna hai! ab maanlo iss bade data ko hum ek DB me store krdiye! but itna zyada data hai ki vo saara ek DB me aa nhi rha kyunki ab DB ki bhi hum kuch limit lagayenge! and maanlo 1TB storage thi vo sab full hogyi! also CPU ki bhi limit reach hogyi itna data hai! toh in that case our DB got exhausted!
-- So in this case we have two big issues! Huge Data and Large number of request! ab huge amount of data ke kaaran jo main issue ayega vo ayega Managebility ka! and then zyada request ke chakkar me CPU exhaust hojaata hai! toh hum kya krte hai Data ko distribute krdete hai! and multiple DB me store krdete hai isse ek Distributed Database bann jaata hai!
-- Ab dikkat vhi thi ki agar ek hi DB pr bhot saara data stored hai then yaa toh system hi crahs hojayega ya toh response time bhot badh jayega! Toh inn hi case me hum Data ko Distribute krdete hai! and ek Distributed Database bnaa dete hai!
-- So overall itne bade data ko handle krne ke liye hum Database optimization techniques use krte hai! like we have studied Scale up and Scale out previously!

-- So, the Data Optimzation techniques like : Scale Up : In this case hume lgta hai ki agar hum storage ko double krde + CPU ko double krde + RAM ko double krde toh response time 1/2 hojayega but aisa practically nhi hota hai! even isse pehli baat toh cost itni badh jaati hai ki that is very high! so this is an expensive bet! so doing scaleup for DB Optimization is not practical!
--                                          : Clustering (Add-Replica Sets) : Ab isme ek master node hoti hai and uske replicas bane hue hote hai alag alag jagah! and jo bhi updates hai vo sab master pr aate hai and jo master hota hai vo ye updates replicas me propagate krta hai! but isse ye dikkat hoti hai isme delay hota hai! ek master se dusre replica tak jaana and all takes time.
--                                          : Partioning : But inn dono se better tareeka hai ye! ye ek scale-out ka tareeka hai, jo clustering bhi tha isme bhi hum new nodes add krte hai! but how this is different from clusterting, so this is how, ki like partioning are of two types! ek toh Horizontal and ek Vertical, Vertical me kya hai ki hum kuch group of columns bnaa ke unko alag alag nodes of DB me daaldete hai! and Horizontal me particular amount of tuples ko kisi aur node me daalke alag alag kr dete hai!
--                                                       : Vertical Partioning me ek ye dikkat hai ki agar vertically data different server/nodes me store hau toh kisi ek tuple ya instance ki saari info ke liye hum multiple servers ko access krna padd sakta hai! but yeah still DB is more optimized than before! and horizontal toh ptaa hi hai!

-- Now lets do it in formal language!
-- A big problem can be solved easily when it is chopped into several smaller sub-problems. That is what the partitioning technique does. It divides a big database containing data metrics and indexes into smaller and handy slices of data called partitions. The partitioned tables are directly used by SQL queries without any alteration. Once the database is partitioned, the data definition language can easily work on the smaller partitioned slices, instead of handling the giant database altogether. This is how partitioning cuts down the problems in managing large database tables.
-- Partioning : Partitioning is the technique used to divide stored database objects into separate servers. Due to this, there is an increase in performance, controllability of the data. We can manage huge chunks of data optimally. When we horizontally scale our machines/servers, we know that it gives us a challenging time dealing with relational databases as it’s quite tough to maintain the relations. But if we apply partitioning to the database that is already scaled out i.e. equipped with multiple servers, we can partition our database among those servers and handle the big data easily.
-- Types of Partioning :
-- Vertical Partioning : Slicing relation vertically / column-wise.
--                     : Need to access different servers to get complete tuples.

-- Horizontal Partioning : Slicing relation horizontally / row-wise.
--                       : Independent chunks of data tuples are stored in different servers.

-- When Partitioning is Applied? : Dataset become much huge that managing and dealing with it become a tedious task.
--                               : The number of requests are enough larger that the single DB server access is taking huge time and hence the system’s response time become high.

-- Advantages of Partitioning : Parallelism
--                            : Availability
--                            : Performance
--                            : Managebility
--                            : Reduce cost, as scaling up or vertical scaling might be costly

-- Distributed Database : A single logical database that is, spread across multiple locations (servers) and logically interconnected by network.
--                      : This is the product of applying DB optimisation techniques like Clustering, Partitioning and Sharding.
--                      : Why this is needed? READ the point 'Why Partioning is Applied?'

-- Now lets see what is Sharding : So it is a technique to apply Horizontal Partioining!
--                               : Ab dekho maanlo ki koi DB hai uske 1-1000 tak ke tuples ko humne ek node S1 me store krdiya hai and 1001-2000 tak ke tuples ko S2 me store krdiya hai! and both of S1 and S2 are indepenedent of each other! these two S1 and S2 are also called Shards! Now, iss case me na jab bhi koi request aayegi tab hume ye dekhna hota hai ki iss request ko kahaa bheje? S1 pr ya S2 pr! toh uske liye we implement a routing layer! jo iss request ko route kregi ki isko jo data retreive krna hai isko vo S1 pr bhejne se milega ya S2 pr! so this adds another layer of implementation as Routing layer!
--                               : The fundamental idea of Sharding is the idea that instead of having all the data sit on one DB instance, we split it up and introduce a Routing layer so that we can forward the request to the right instances that actually contain the data.

-- Industries me Sharding and Partioning ek hi saath use hote hai generally! they are used interchangebly oftenly!

-- Pros of Sharding : Scalability & Availability

-- Cons of Sharding : Complexity increases due to making partition mapping and introducing routing layer into the system!
--                  : Non-uniformity that creates the necessity of Re-Sharding.
--                  : Not well suited for Analytical type of queries, as the data is spread across different DB instances. (Scatter-Gather problem)

-- To apply sharding there are queries! in DDL! so google it on your own while revising!

-- ----------------------------------------------------------------------- Lecture 19 : DB Scaling Patterns --------------------------------------------------------------------------------------------------------------------------------->
-- Till now we have studied some topics which were more or less already taught us in the colleges! but now lets learn some more industry specific topics!
-- DB Scaling Patterns : Firstly hum scaling kyu kr rhe hai and that is becoz humara DB badhta jaa rha hai users badhte jaa rhe hai! toh hume DB ko optimized rakhne ke liye and aur data ko acquire krne ke liye scaling use krni hoti hai!
-- So initially toh DB hum itna badaa nhi bnaate hai jab company nayi nyi shuru krte hai toh kyunki need hi nhi hai! starting me ek DB chhota hi hoga and then agar users badhte jayenge uske according hum scaling krte jayenge!

-- Lets see a case study! where you are making a Cab booking App! and you have a tiny startup! and initially you have only 10 customers and you DB is also on a small PC and also you are getting 1 request in 5 minutes! so abhi toh DB and application ekdum mast kaam krega!
-- But maanlo your startuo and app becomez famous! and now the customers increased to more than 10 and you are getting 10 reuqests per minute! then in that case humara DB toh ek normal se PC pr hai toh isme kaafi time lag sakta hai! and jo DB calls honge and then jo response time hoga vo kaafi ghat jayega! customer ka dis-satisfaction hoga! and jo transactions honge unme deadlock starvation and alag alag taah ke problems aane lagenge! API latency bhot badh jayegi! means vhi response time badh jayega! and overall perfomance slow down hogya!
-- So solution to this is, hume apne DB ko scale krna padega and optimize krna padega! 

-- So now, hum different different patterns use krenge DB ko scale krne ke liye, seedha hi DB badhaa nhi denge, as per need jayenge taaki cost ekdum se badh naa jaaye!
-- Query Optimization and Connection Pool Implementation! : First is cache memory is frequently uses non-dynamic data like, booking history, payment history and user profile! so non-dynamic data is that jo DB se fetch krne ki zarurat nhi hoti! like hum jo app hai usme recent ki jo payment history hoti hai and jo travel hostory hoti hai usko toh store kr hi sakte hai! isse customer ke liye easy hoga unn cheezo ko access krna! so cache stores all the non-dynamic data! dynamic data vo hua jaise Driver ki location, best route for travel, ye sab dynamic data hai ye sab chche me store hone ka koi fayeda nhi hai! So overall cache me non-dynamic data store krenge taaki baar baar kuch basic cheezo ke liye baar baar DB call na krna pade! and isse thora DB optimize hoga!
--                                                        : Ab dekho maanlo humne jo DB bnaa rakha hai iss app ke liye vo bhot hi heavly normalized hai! ab Normalization se kya hota tha ki data redudancy kam hoti thi! and isse multiple table banti thi and then jab jo data fetch krne hai uske liye DB calls jaati thi and then joins ki help se unn tables ko JOIN kiya jaata tha isse time lgta tha! so what we can do is ki hum thora Normalization kam krke and Data Redudancy badhaa ke DB optimize kr sakte hai kyunki JOINS queries kam hojayengi fir, so this is one way or the other is we can use NoSQL DBs like MongoDB uska yhi sabse badaa fayeda tha ki usme horizontal scaling kr sakte the and data redudancy hoti thi and also optimized hota tha!
--                                                        : Cache DB Connections! isme kya hota hai ki jaise humara ek DB hai and then ek application hai jahaa pr Code likha hua hai! and uss code me kaafi jagah DB connections ke liye call kri gyi hai! and harr call pr nayaa connection establish krna is a very costly thing! so what we do is, hum kuch DB Connections pehle se hi bnaa ke rakh lete hai! and then jab bhi connection calls aati hai toh unko hi reuse krte rehte hai! isse cost bachti hai and also jo time and cost lgti thi new connections establish krne me vo bhi kam hota tha! and overall DB calls fast hoti hai! so ye achieve krne ke liye jiss language me humne apna application code likha hai like for example : Spring, toh isme kuch aisi libraries hoti hai jo Cache DB connections krti hai toh hum unko use kr sakte hai!
--                                                        : But ab maanlo ki firse number of users of the app increased itna ki firse DB and application se handle nhi ho rhe! toh in that case we ye saari optimizations ek limited userbase tak theek thi but after a certain point of number of users, vhi API latency and all firse increase hone lagi! and vo saari problems firse raise hone lagi! so in that case we will use some more optimzations and scaling patterns!

-- Vertical Scaling (Scaling-Up) : Now we will upgrade the system from that tiny PC to a better and string PC or System.
--                               : We will also increase the RAM by 2x and SSD by 3x.
--                               : But also scaling up is pocket friendly to a point only, toh hume jab lagega ki previous vaala pattern 1 me se kaam ban hi nhi rha hai! uske baad hum pattern 2 pr jayenge! More you scale-up more, the more the cost will increase!
--                               : Good Optimization as of now.
--                               : Now, after sometime the requests have increased even more! and now even this pattern is also not working very much... toh hum kuch aur optimizations krenge! after sometime hum aur scale up nhi kr paa rhe hai!

-- Command Query Responsibility Segregation (CQRS) : Toh abhi upar vaale case me ye ho rha tha ki ab jo machine thi humari ab aur read and write requests ko handle nhi kr paa rhi hai! so now iss case me hum unko segregate krte hai!
--                                                 : So isme hum kya krte hai ki isme hum jo database hai uske replicas bnaa dete hai taaki jo read and write requests different different DBs pr jaaye and ek DB pr dono operations handle krne ka load na pade!
--                                                 : So hota kya hai ki jaise ek main DB thi jisko hum Primary Db bolte hai! and now jab bhi koi read request ayegi vo unn replica DBs pr jayengi and jab bhi koi write request ayengi vo Primary DB pr jayegi! aisa isliye kyunki we have studied in clustering that jo main DB hoti hai usme hi saare updates hote hai then vo updates replica DBs pr forward hote jaate hai! kyunki ofcourse agar replicas pr read operation ho rha hai toh unn replicas me vo saare updates hone chahiye jo main Primary DB pr ho rhe hai!
--                                                 : But also kya ptaa t=0 pr koi write operation (update) hua primary db pr and toh ofc thora toh time lagega usko replicas me replicate hone me toh in that case ye cheeze companies allow krti hai ki chalo koi baat nhi thora time lagega toh lgne do! tab hi you see, when you book a cab jo humae cab ka route dikh rha hota hai vo usme cab continously move nhi kr rhi hoti! vo harr kuch meters travel krne ke baad ek baar move krti hai kyunki yhi same reason se! kyunki thora time lgta hai primary DB se replica DBs me cheeze update hone me!
--                                                 : But, now again vhi same cheez, ki isme again number of users agar ek limit se upar chale jaye toh firse hume changes and optimization krna padega! kyunki write operation primary db me ho slow hogya and isse jo acceptable time tha ki itne time me data replicate hoga replicas DB me vo bhi out of acceptance limit se upar chalaa gya! and isse firse user experience khrab hogya!

-- Multiple Primary Replication : Isme there is no DB is primary and no DB is replicas, all are primary and all are replicas! so, now isme kya hota hai ki isme multiple DB ki copies banti hai and sab ek circular form me data replicate krti rehti hai jab bhi koi update aaye DB me! like A->B->C->C->D->A... and so on...
--                              : Isse kya fayeda hai ki jab bhi koi write operation ayega toh vo kisi bhi ek Db pr jayegi and then uspr vo updates hojayenge and then vo updates baaki saari DBs pr carry forward hojayenge! but jab koi read reques ayegi toh vo broad cast hojayegi saare DBs pr and jo DB pehle reply krdega usko utha ke user ko show krdenge!
--                              : Again isme bhi kuch time lagega ki write operation me and then usko saari Dbs pr jald se jald replicate/carry forward hone me! so vo jo time lagega vo again acceptance limit se upar nhi hona chahiye!
--                              : Again same cheez ki no. of users firse badh gye and now firse scaling ki zarurat hai! like suppose kuch aisa ki iss level ki optimzation kuch 50 requests per second handle nhi kr paa rhi hai! toh iss case me again hume optimzation krna padega!

-- Partioning of Data by Functionality : Now isme hum jo Db hai usko functionality wise hi divide kr dete hai! like, jaise Cab App ka DB hai! toh isme jaise location ki info stored rehti hai + driver kon hai gaadi number and all... toh like suppose humne socha ki chalo jo location hai uska alag se hi DB schema bnaa dete hai! which will handle all the requests related to that!
--                                     : Toh yahaa humne vhi functionality wise DB schema change krdiya! or should say humne ek alag DB hi bnaa diya jo sirf particular uss tarah ki functionalities vaali requests ko handle krega! so now dekha jaaye iss example me humare paas 2 DBs hogye! and dono ka alag alag functions hogye! (Table nhi alag kiye hai Db hi alag krdi hai! dono ki alag alag functionalities hai!).
--                                     : And now ab hum inn dono Dbs pr individually primary-replica vaala pattern ya multiple-primary DB vaala pattern apply kr sakte hai requests handle krne ke liye!
--                                     : But isme ek ye cheez hume extra krni padegi ki jo requests hongi unko route krna hoga ki uss request ko kis DB pr jaana hai! agar like jo request aa rhi hai vo agar vo location ke liye hai toh DB2 pr jao, nhi toh DB1 pr! toh ye ek extra layer lgaani hogi routing ki! so overall jo query client bhejega usko ye layer dono DBs me requirement wise bhejegi! and then finally jo bhi data retrieve hua dono DBs se unko JOIN krke client ko vapis bhejdegi!
--                                     : Ab kya ho rha hai ki maanlo aapko apna Db jo hai usko apni country ke bahar bhi expand krna hai kyunki ek country me jitna business badhna tha badh gya but ab agar bahar bhi badhana hai toh uske liye jab bahar ke log jab aapka app use kr rhe hai toh unko dikkat aa rhi hai and latency ho rhi hai distance ke chalte! so ab humae apna DB expand krna hai! so for that we will use horizontal scaling or should say scale-out!

-- Horizontal Scaling (Scale-Out) : Using Sharding (Creating multiple shards!)
--                                : Allocate 50 machines all having the same DB Schema but all having different parts of the data! each machine can have their own replicas so that they can handle and use that for recovery failure!
--                                : Sharding is genrally hard to apply!
--                                : Now your business has grown so strong that it can grow to different continents! so taaki across continent log bina kisi dikat ke Db use kr paaye toh uske liye we will scale more by creating different Data Centres in different countries!

-- Establish Multiple Data Centres : As requests are now travelling across continents due to which it is having high latency! so what about distributing the traffic across Data centres!
--                                 : Now suppose humne multiple DCs khole some in Europe, India Singapore and USA, now jab koi request aati hai jo asia se hai toh vo india ya singapore ke DC pr jayegi jisse latency minimzize rahe! and isse worldwide humara data scaled hai and humara business bhi bhot bade level pr pohoch jayega! but now maanlo kisi ek country ka DC kharab ho jaata hai ya koi service ki requirement hai usko! toh uss case me hume uss jagah ka DC ko kuch der ke liye bnd krna pad rha hai! toh iss cheez se bachne ke liye humne aise banaya hua hota hai DCs ko ki harr kuch regular interval of time pr ye saare Dcs apas me Data replicate krte rehte hai! isse saara data sab jagah hai! isse kisi ek jagah ka DC khrab bhi hota hai toh, toh jo uss jagah ki requests hongi vo kisi aur jagah ke DC pr forward hojayengi! and isse thori latency ayegi! but atleast Availablity nhi khatam hogi! and inn DB Scaling patterns ka yhi motive that ki thori latency se koi dikkat nhi hai main is data ki availablity nhi rukni chahiye! so that is why cross data centre replication is important!

-- So ya now you business and its application + software is very optimzed and good to go! this is all for DB Scaling!


-- ----------------------------------------------------------------------- Lecture 20 : CAP Theorem in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- Jab humare paas bhot saara data ho jaata hai toh hume Scale-Up ya Scale-Out krna pad jaata hai! toh uss case me jab bhi replicas ya distrbutes storage banti hai toh usme ek theorem bhot kaam aati hai which is CAP Theorem!
-- Here, C (Consistency) A (Availability) P (Partion Tolerance).

-- Basic and one of the most important concept in Distributed Databases.
-- Useful to know this to design efficient distributed system for your given business logic.

-- Let’s first breakdown CAP
-- Consistency : In a consistent system, all nodes see the same data simultaneously. If we perform a read operation on a consistent system, it should return the value of the most recent write operation. The read should cause all nodes to return the same data. All users see the same data at the same time, regardless of the node they connect to. When data is written to a single node, it is then replicated across the other nodes in the system.
-- Availability : When availability is present in a distributed system, it means that the system remains operational all of the time. Every request will get a response regardless of the individual state of the nodes. This means that the system will operate even if there are multiple nodes down. Unlike a consistent system, there’s no guarantee that the response will be the most recent write operation.
-- Partioning Tolerance : When a distributed system encounters a partition, it means that there’s a break in communication between nodes. If a system is partition-tolerant, the system does not fail, regardless of whether messages are dropped or delayed between nodes within the system. To have partition tolerance, the system must replicate records across combinations of nodes and networks.

-- What does the CAP Theorem says,
-- The CAP theorem states that a distributed system can only provide two of three properties simultaneously: consistency, availability, and partition tolerance. The theorem formalises the tradeoff between consistency and availability when there’s a partition.
-- Means aapke distributed system me kabhi bhi ye teeno properties ek saath nhi ho sakti! ya toh koi ek hogi ya toh do! but teeno ek saath nhi hongi!

-- Lets understand this with an example...
-- Suppose you are a user! and you are accessing a database jo bhot badaa hogya tha uske replicas bnaa diye gaye the! so the user is accessing the Node1 for write operations which is the primary node! and for read operations the user is accessing the Node2, Ab maanlo iss beech Database ki partioning hogyi backend pr... hum toh as a user isko access kr rhe hai! but backend pr jo developer hai usne socha ki partioning krni padegi DB ki toh usne vo krdi! now, toh ab partioning krdi hai toh ab kuch der ke liye jo dono Nodes ke beech ka connection that vo break hojayega! toh jo write operations hote the and vo jaake secondary node pr update hote the ye operations kuch time ke liye ruk jayenge!...
-- Toh ab agar user kuch updates krega using write operations ka use krke Node1 pr toh vo Node2 me update/replicate nhi honge! and iss kaaran se Consistency break hojayegi! means agar maanlo humne X = 10 update kiya tha DB me pr backend pr toh ye Node1 pr hua hai update, toh jab Db access krne ka try kiya jayega user ke dwara toh vo again backend pr toh Node2 ki help se hoga pr Node1 and Node2 me toh link toota hua hai partioning ke wajah se toh abhi value update nhi hogi! toh read operations pr jo reply milega user ko vo X ki previous value hi hogi suppose X ki value pehle 20 thi toh 20 hi return hogi!
-- Toh yahaa humne dekha ki Partioning toh krdi but Consistency lost hogyi (Agar dono nodes same time access krna ho toh, means agar write and read operations saath me krne ho toh) but availability toh lost nhi hui!

-- Now, lets see how Availability will lost, Now suppose ki jo backend pr developer hai vo nhi chahta ki X ki galat value read ho toh uske aisa program krdiya ki jab write operations ho and partioning ho chuki ho toh reda operation krna hi allow na kre means Node2 fail hi ho jaye jiss time pr Write operation hua ho! isse Partioning hogyi! even consistency bhi lost nhi hui kyunki lost toh tab hoti jab write krne ke baad partioning ke chakkar me jab read kiya jaata Node2 me se toh galat value read hoti! but yahaa toh read operation ko hi fail krdiya taaki consistency break na ho! So this is how availability is lost!

-- So here we have seen koi 2 hi properties establish ho paa rhi hai ek baar me!
-- But ye problem single node me ayengi hi nhi! kyunki vahaa pr partioning hogi hi nhi, jab ek hi node hai toh kya partioning!

-- CAP Theorem NoSQL Databases: NoSQL databases are great for distributed networks. They allow for horizontal scaling, and they can quickly scale across multiple nodes. When deciding which NoSQL database to use, it’s important to keep the CAP theorem in mind.
-- CA Databases : It means databases which provides consistency and availability! but as we have seen ki jahaa partioning hoti hai vahaa ye dono saath ho hi nhi sakte! aur partioning kahaa nhi hoti? in single Node Databases! means CA chahiye toh single Node DBs me milega!
--              : CA databases enable consistency and availability across all nodes. Unfortunately, CA databases can’t deliver fault tolerance. In any distributed system, partitions are bound to happen, which means this type of database isn’t a very practical choice. That being said, you still can find a CA database if you need one. Some relational databases, such as MySQL or PostgreSQL, allow for consistency and availability. You can deploy them to nodes using replication.

-- CP Databases : These tyoe of DBs provides Consistency and Partioning! but not Availibility. This we have just studied upar...
--              : CP databases enable consistency and partition tolerance, but not availability. When a partition occurs, the system has to turn off inconsistent nodes until the partition can be fixed. MongoDB is an example of a CP database. It’s a NoSQL database management system (DBMS) that uses documents for data storage. It’s considered schema-less, which means that it doesn’t require a defined database schema. It’s commonly used in big data and applications running in different locations. The CP system is structured so that there’s only one primary node that receives all of the write requests in a given replica set. Secondary nodes replicate the data in the primary nodes, so if the primary node fails, a secondary node can stand-in. In banking system Availability is not as important as consistency, so we can opt it (MongoDB).

-- AP Databases : It provides Availability and Partioning but not Consistency, this also we have studied upar...
--              : AP databases enable availability and partition tolerance, but not consistency. In the event of a partition, all nodes are available, but they’re not all updated. For example, if a user tries to access data from a bad node, they won’t receive the most up-to-date version of the data. When the partition is eventually resolved, most AP databases will sync the nodes to ensure consistency across them. Apache Cassandra is an example of an AP database. It’s a NoSQL database with no primary node, meaning that all of the nodes remain available. Cassandra allows for eventual consistency because users can re-sync their data right after a partition is resolved. For apps like Facebook, we value availability more than consistency, we’d opt for AP Databases like Cassandra or Amazon DynamoDB.

-- Ab jiss tarah se Banking system me ACID properties hona must hai! vaise hi Social Media Networking me BASE Properties hona must hai...
-- Lets see what are BASE properties...
-- BA (Basically Available) S (Soft State) E (Eventually Consistency) :

-- Basically Available : The system guarantees that it will always try to respond to a request. It might not be an immediate response, and it might not always be the correct or most recent data, but the system will not simply fail to respond.
--                     : Imagine a store that guarantees it will always be open, but sometimes the shelves might not have the exact product you’re looking for, or it might take a while to find it.

-- Soft State : The state of the system can change over time, even without any new input. This happens because the system might be propagating changes across multiple servers, and the state isn’t immediately consistent.
--            : Think of a social media feed that changes as new posts are added and old ones are removed, even if you’re not actively refreshing the page.

-- Eventually Consistency : The system will eventually become consistent if no new updates are made. This means that all nodes in a distributed system will eventually hold the same data if given enough time, but they might not have the same data at any given moment.
--                        : Picture a group of friends playing a game of telephone. Initially, the message might be garbled, but if they keep passing the message around and correcting it, they will all end up with the same message eventually.

-- In contrast to ACID (Atomicity, Consistency, Isolation, Durability) properties, which emphasize strict data consistency and reliability in traditional relational databases, BASE properties are more flexible and are designed to provide high availability and partition tolerance, making them suitable for distributed systems where network partitions or server failures can occur.
-- These properties make BASE systems more adaptable to distributed environments where immediate consistency is less critical than availability and partition tolerance.


-- ----------------------------------------------------------------------- Lecture 21 : Master Slave Architecture in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- So suppose there is one DB and kaafi saari requests aa rhi hai uss DB pr uss DB ko access krne ke liye! ab inn saare request ko balance krne ke liye ek Load balanecer bnaa diya gya! jo saari requests ko balance krke DB pr daalta rahega taaki Data access kr paaye! but now, maanlo agar vo jo ek akela DB hai vhi khrab hogya toh ya usme kuch errors aagye toh! then in that case our whole system will crash! and availability will be 0, so isse bachne ke liye hi we have done partioning and sharding as we have studied in Lec 19, now isme jo main DB hai usko hum Master/Primary/Original/Latest/Owner DB bhi bolte hai!
-- Toh as humne padhaa that Lec 19 me ki inn sab se bachne ke liye hi hum DB ki partioning ya Replcas bnaa dete hai! taaki kuch requests unn replicas pr bhi jaaye! and availability 0 na ho! and inn replicas pr sirf read operations hote hai! these replicas are called Slave, and jo bhi write operations hote hai vo sab Master Db pr hote hai! and then vo linkage ke through replicas pr update hote hai!
-- Now itna toh and all details humne Lec 19 me padhliye hai, but now the thing is ki replication hoti kaise hai? So there are ways :
-- Asynchronous Replication : Maanlo jo master Db hai usme kuch updates hui at T = 0 pr! and iss Master DB ke do replicas hai (Slaves hai) unn par updation hui T = 10 and T = 12 pr! ab iss beech koi bhi read operation aata hai toh vo old value hi show krega! and agar humara business logic isko support krta hai toh hume koi dikkat nhi hai thori delay se! for example jo Cab booking ki app hai uspr jo cab ka route hota hai vo kuch der baad update ho hume koi dikkat nhi hoti! similarly jaise FB/Insta pr jo comments ya Likes hote hai vo hum Like kre toh hume dikh gya vahi ke vahi! but poori duniya me jo Dbs hai un pr agar kuch der baad bhi show ho rha hai toh hume koi dikkat nhi hai! so this is Async Replication! But haa delay zyada bhi nhi hona chahiye like kuch sec ka is acceptable, ya jo bhi uss business logic ke according delay hai uske bahar nhi jaana chahiye time of replication!
-- Synchronous Replication : Ab isme jo Master Db pr jo updates hue vo T = 0 me hi Slaves vaale DB pr replicate bhi ho jaate hai! iski need padti hai Banking System me! kynki usme jo paise ek jagah se dusri jagah gya hai vo vhi ke vhi end user pr show hona chahiye!

-- Now what if Slave gets some Update requests? Then in that case you have 2 choices...
-- 1st : To simply ignore or never allow those requests!
-- 2nd : And if you allow those request, then make sure your propagate those updates to the Master! but in this case it wont be a Master Slave Architecture anymore! It will be more of a matser-master architecture!

-- Advantages : We have a Backup! becoz of Replicas for read operations! ki chalo write nhi ho paa rha kuch issues ke chalte! but atleast read toh ho paa rha hai!
--            : It scales out read Op! read operation krna zyada easy ho jaata hai kyunki read ke liye multiple nodes hai! and if your appliaction is like jisme read ka zyada kaam hai then in that case it is helpful!
--            : Availability Increases
--            : More Reliable
--            : Reduce Latency
--            : Parallelism for read requests!

-- Master and Slave dono ke DBs alag alag ho sakte hai, like ek SQL ka ho sakta hai Master and Slaves MongoDb ke ho sakte hai! but isse ek ye dikkat ayegi ki hume alag alag interfaces likhne padenge updates krne ke liye Master se Slave me!

------------------------------------------------------------------------------------- Complete -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->