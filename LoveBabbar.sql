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
--                     : Provides different views of the database to different user groups based on their needs. Each view schema describes a subset of the data relevant to a specific user. Acts as a security mechanism, hiding certain parts of the database from unauthorized users.
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
-- Abstraction is a broader concept that deals with hiding complexity at different levels (physical, logical and view).
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
-- Tuple : A single row of the table representing a single data point / a unique record.
-- Columns : represents the attributes of the relation. Each attribute, there is a permitted value, called domain of the attribute.

-- ER model me jo jo entities thi vo relational model me tables ban jaati hai! & jo attributes hote hai vo sab relational model me columns ban jaati hai!
-- Degree of Table : Number of Attributes!
-- Cardinality : Number of tuples!
-- Jab DB Design hota hai toh pehle ER model banta hai and then uss ER model se Relational Model banta hai!
-- And then ek RDBMS software hota hai jo iss relational model ko implement krta hai! like creation and updation of the whole tables and relations among them! example of RDBMS Software : MySQL, Postgre, Oracle!
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
--                 : Alternate Keys : All CK except PK. It is also called Alternate/Secondary Key.
--                 : Foreign Keys : It creates relation between two tables.
--                                : A relation, say r1, may include among its attributes the PK of an other relation, say r2. This attribute is called FK from r1 referencing r2. 
--                                : The relation r1 is aka Referencing (Child) relation of the FK dependency, and r2 is called Referenced (Parent) relation of the FK.
--                                : FK helps to cross reference between two different relations.
--                 : Composite Key : PK formed using at least 2 attributes.
--                 : Compound Key : PK which is formed using 2 FK.
--                 : Surrogate Keys : Suppose you have DB of 2 Schools, and their criteria of uniquely identifying students are different! like one school stores the roll number as 1 2 3... and another stores it like A101, A102 and so on... so now if we want to merge the tables of these two schools, so we will make another column or attribute which will give a common serial number for all the students/tuples!
--                                  : Generated automatically by DB, usually an integer value. May be used as PK. It is a self generated PK. DB generate it itself after merging!

-- Integrity Constraints : CRUD Operations must be done with some integrity policy so that DB is always consistent. Introduced so that we do not accidentally corrupt the DB.
--                       : Domain Constraints : Restricts the value in the attribute of relation, specifies the Domain. Example, We want to specify that the enrolment should happen for candidate birth year < 2002.
--                       : Every relation should have PK. PK != NULL.

-- Refrential Constraints : Specified between two relations & helps maintain consistency among tuples of two relations.
--                        : Insert Constraints : Suppose you have two tables one is order and one is customer! and order table me ek orderId jo PK hai and ek CustID hai jo FK hai, so this table is the child table and Customer table is Parent table, so Isme there is one Insert Constraint, where it means hum order table me aise hi koi bhi value insert nhi kr sakte! kyunki harr order ke saath uska ek customer bhi hai jiski ek CustID hai, but agar jo tuple hum Order table me add kr rhe hai uska jo custID hai vo agar Customer table me hi exist nhi krta hai toh yahaa error sho hojayega! Kyunki hum koi ek invalid tuple add krne ki koshish kr rhe hai order table me ek customer ke liye jo customer customer vaale parent table me hi exist nhi krta!
--                        : Delete Constraints : Taking same above example, so it means, we can't delete any tuple from the Parent table whose PK is used as a reference in the Child Table! vrna kya hoga ki maanlo koi order humne fetch kiya and uske corresponding jo CustID hai vo customer table me exist hi nhi krta, this will create a problem, so for that we have this Delete Constraint!
--                        : But kya iska mtlb ye hai ki hum parent table me se kuch delete kr hi nhi sakte hai? so nhi aisa nhi hai, becoz we have a keyword "ON DELETE CASCADE" jab koi parent table create kr rhe hote hai, tab hi hum ye keyword, table defintion me daal dete hai! taaki jab bhi koi tuple delete ho parent me se toh vo child me se bhi delete hojaye!
--                        : Ek aur tareeka hota hai Delete krne ka parent table me se that is "ON DELETE SET NULL", kyunki iss case me jab delete hoga parent table me se toh child table me se vo poora tuple delete nhi hoga, balki jo uss parent table ke corresponding foreign key thi child table me uski value NULL hojayegi!
--                        : There are multiple type of referential constraints while deleting/updating data in the child or parent table, they are : ON [DELETE | UPDATE] [SET NULL | CASCADE | RESTRICT | NO ACTION | SET DEFAULT];
--                        : ON DELETE/UPDATE SET NULL : If a record in the parent table is deleted, the foreign key column(s) in the child table are set to NULL. and If a primary key value in the parent table is updated, the foreign key column(s) in the child table are set to NULL.
--                        : ON DELETE/UPDATE CASCADE : If a record in the parent table is deleted, all corresponding records in the child table are automatically deleted. and If a primary key value in the parent table is updated, all corresponding foreign key values in the child table are automatically updated to match.
--                        : ON DELETE/UPDATE RESTRICT : Prevents the deletion of a record in the parent table if there are corresponding records in the child table, and Prevents the update of the primary key value in the parent table if there are corresponding foreign key values in the child table.
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
--                           : Example - account (account-number, balance)
--                           : Table 1 : savings-account (account-number, interest-rate, daily-withdrawal-limit)
--                           : Table 2 : current-account (account-number, overdraft-amount, per-transaction-charges)
--                : Method 2 : Isme ye krna hota hai ki jo Higher level entity usko mtt bano sirf Lower level vaali banao and Higher level ki jo PK thi usko lower level ki PK bnaa do + jo bhi attributes the Higher level entity ke unko bhi lower level entity ke attributes bnaado!
--                           : Table 1 : savings-account (account-number, balance, interest-rate, daily-withdrawal-limit)
--                           : Table 2 : current-account (account-number, balance, overdraft-amount, per-transaction-charges)

-- Note : But sometimes method 2 has some problems, which are like, Maanlo ki koi aisa account hai jo savings bhi hai and current bhi hai (mtlb overlapping generallization hai) toh usme balance toh same hi hoga! but according to 2nd Method dono lower level entity me balance stored hai toh balance iss case me do baar store ho jayega! which will create redudancy!
--      : Also if maanlo ki complete generalisation nhi hai and jo higher level entity hai account vo naa hi current hai naa hi savings vo kuch aur hi type ka account hai, then in that case aise accounts ko hum represent nhi kr payenge method 2 ka use krke!
-- In the above cases account-number is the PK!

-- Aggregation : Isme jo relationship establish hua hai different entity sets me, uss relationship ko leke ek table bnaa denge and jitne bhi entities involved hai unn sabki PK ko Attributes bnaa ke iss Relationship table ki, unn sab PK ko mila ker ek PK bnaa denghe iss new relationship table ki!

-- Unary Relationships : Isme ek entity jo hai vo apne aap se hi related hai! ab vo relation 1:1 ka ho sakta hai, 1:N ka ho sakta hai ya N:M ka ho sakta hai!
--                     : If 1:1 then, Jaise maanlo ek relation hai Person to Person ka and relation is "Married to" ka, then isme jo spouseID aur kuch nhi balki PK hi hogi person table ki jisko hum as a FK bnaa ke ek aur attribute add krdenge person table me, hence the schema will be, Person(EmpID, Name, SpouseID)
--                     : If 1:N then, Jaise maanlo ek employee table hai and iska ek unary relation hai khud ke saath hi "Manages" ka then in that case hum iss person table ki PK ko as a FK bnaa ke iss hi table me ek naya attribute add krdenge! means Person(EmpID, Name, Joining-Date, Emp-Mgr-ID), isme ye Emp-Mgr-ID te khud EmpID hi hai! iss hi table ki jisko bss hum Mgr-ID ki tarah use kr rhe hai toh establish the unary relation! and this FK can be NULL also, kyunki ho sakta hai kisi EmpId ke corresponding koi Manager ho hi na kyunki kya pta vo CEO ho
--                     : If M:N then, Jaise maanlo koi relation hai courses ka courses se and the relation is about "PreRequisite", in that case ek course ko padhne ke liye kuch aur dusre courses padhne zaruri ho sakte hai, so to represent that, we will create a table of Courses(CourseID, Title) & PreRequisite(CourseID, PreReq-Course-ID), isme bhi humne vhi kiya hai ki CourseID jo ek PK hai main table me uska hi name change krke FK bnaa ke iss table me daal diya hai and ye dono attributes milke ek PK bnaa rhe hai iss table ki!

-- Practice using the banking system and Facebook ER Diagrams and convert it into Relational Models!

-- ----------------------------------------------------------------------- Lecture 9 : SQL --------------------------------------------------------------------------------------------------------------------------------->
-- Will mention only the exclusive details jo iss lecture se mili hai, if want to study from A-Z then visit the Apni Kaksha notes and FCC Notes!
-- Here we go...

-- Can we use select keyword without using the from clause? Yes we can!
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
-- Syntax :
-- SELECT T1.name, T1.lname, T2.id, T2.name FROM Table1 as T1
-- CROSS JOIN Table2 as T2; -> The output will contain number of rows = product of rows of both the tables
-- This is how it works!

-- Can we use JOIN without using JOIN Keyword? Yes we can!
-- Syntax...
-- SELECT * FROM LeftTable, RightTable WHERE LeftTable.id = RightTable.id -> So here we have implemented Inner Join without using the JOIN Keyword!

-- Set Operations in SQL : Union, Intersection and Minus
-- Set operations and Joins both are used to combine two tables, joins do it along columns and sets do it along rows!
-- Used to combine multiple select statements.
-- Always gives distinct rows.
-- Jinn columns ko combine krna chahte hai row wise unke data types same hone chahiye! and number of columns jo select krne hai dono tables me se vo bhi same hone chahiye! and it combines results vertically! also it combines distinct rows!

-- Union : Combines two or more SELECT statements,
-- Union Syntax : SELECT column_name(s) 
--                FROM table1
--                WHERE condition
--                UNION
--                SELECT column_name(s)
--                FROM table2
--                WHERE condition;
-- Number of column, order of column must be same for table1 and table2.

-- Intersect : Returns common values of tables, in SQL there is not keyword for Intersect, so we need to formulate it! and for that we use inner join
-- Formulated Intersect Syntax : SELECT DISTINCT T1.id
--                               FROM T1
--                               INNER JOIN T2 ON T1.id = T2.id;

-- Minus : T1 - T2, it is similar what we do in maths, there is no keyword for Minus in SQL, so we need to formulate it
-- Formulated Minus Syntax : Select DISTINCT T1.id
--                           FROM T1
--                           LEFT JOIN T2
--                           ON T1.id = T2.id;
--                           WHERE T2.id is NULL;

-- SubQuery & Co-Related Queries!
-- SubQuery : A subquery is a query that is written inside another query and executed once before the main query. It provides data to the main (outer) query.
--          : Key Points : The subquery is independent of the main query. The result of the subquery is used by the main query. It is executed before the main query.
--          : Syntax : SELECT column_name(s) FROM table_name WHERE column_name = (SELECT column_name FROM another_table WHERE condition);

-- Co-Related Queries : A correlated query is a query that depends on the data from the main (outer) query for its execution. It is executed once for each row in the main query.
--                    : Correlated query ek aisi query hai jo main query ki row pe dependent hoti hai. Yeh har row ke liye alag se run hoti hai, aur outer query ki values ko use karti hai.
--                    : Syntax : SELECT column_name FROM table_name1 t1 WHERE condition_operator (SELECT column_name FROM table_name2 t2 WHERE t2.column_name = t1.column_name);

-- NOTE : SubQueries and Co-related queries can be used in different parts of an SQL statement, such as SELECT, FROM, and WHERE clauses. However, their purpose and behavior differ based on where they are written.
-- Example : SubQuery : In SELECT : SELECT name, salary, (SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id) AS avg_department_salary FROM employees e1;
--                    : In FROM : SELECT department_id, total_salary FROM (SELECT department_id, SUM(salary) AS total_salary, COUNT(*) AS employee_count FROM employees GROUP BY department_id ) AS department_summary WHERE employee_count > 1;
--                    : In WHERE : SELECT name FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'HR');

-- Example : SubQuery : In SELECT : SELECT name, salary, (salary * 100.0 / (SELECT SUM(salary) FROM employees e2 WHERE e1.department_id = e2.department_id)) AS salary_percentage FROM employees e1;
--                    : In WHERE : SELECT name, salary FROM employees e1 WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id);
--                    : In FROM : Correlated queries are generally not used in the FROM clause because they are inherently row-dependent and evaluated for each row in the outer query. The FROM clause is typically used to define datasets (tables or subqueries) that the outer query processes as a whole, so correlated queries don't fit naturally into this scenario.

-- SubQuery & Co-Related Queries Difference!
-- SubQuery : Subquery ek aisi query hai jo independent hoti hai aur pehle execute hoti hai. Iska result main query ko input ke roop mein diya jaata hai.
--          : Execution flow : Subquery ek baar execute hoti hai, poori table ke liye ek hi baar. Phir main query us result ko use karti hai.
--          : SubQuery returns a static value or a dataset! which can be used by the main query or outer query!
--          : Faster compared to correlated query (Coz it runs only once!).

-- Co-related Query : Correlated query ek aisi query hai jo main query ki ek row ke upar dependent hoti hai. Yeh query row-by-row run hoti hai.
--                  : Correlated query har row ke liye baar-baar chalti hai. Outer query ki har row ke liye inner query result calculate karti hai. Correlated query outer query ki values par dependent hoti hai.

-- Identifying SubQuery & Correlated Queries : Logical clues we have discussed above, There are some syntactic clues also for both of them!
-- SubQuery : The subquery runs once and provides a static result (value or dataset). AND It does not contain outer query aliases or references.
-- Correlated Query : You will see references to outer query columns (like e1.column_name) in the inner query. Look for outer query table aliases (e.g., e1, t1) in the subquery. AND The subquery is typically nested in a WHERE or SELECT clause.

-- Real-life Analogy : SubQuery : Ek school ka example lo. Pehle tum school ka overall average score nikalte ho (static value), phir students ko filter karte ho jo us score se zyada hain. Static calculation -> No dependency.
--                   : Correlated Query : Har student ke liye uske class ka average score alag se calculate karte ho aur check karte ho ki uska score zyada hai ya nahi. Dynamic calculation -> Dependency on outer query.

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
-- "Substring" : Substring(String, Starting point, Ending point).
-- Upper and Lower case : Upper(string) / Lower(string).
-- "instr" : Tells the position of character in a string, syntax : INSTR(string, 'character'). and it is case-insensitive.
-- "Rtrim" and "Ltrim" : It helps in removing the white spaces from right and left side, syntax is simple, Ltrim(string) / Rtrim(string).
-- "Replace" : Replaces substring inside a string, replace(string, kis substring ko replace krna hai, kisme replace krna hai).
-- "concat" : Combines two strings, example : Select concat(first_name, " " ,last_name) from Worker; or simply Select concat(first_name, last_name) from Worker; / Select concat(string1, string2) from Worker;
-- "curdate()" and "now()" : Both retrieve the current date and time. curdate() will display the current date (without the time part). now() will display the current date and time (timestamp).
-- "Mod()" : Syntax : Mod(value, number jisse mod krna hai)

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
--         : Answer : SELECT DISTINCT salary FROM worker ORDER BY salary DESC LIMIT 1 OFFSET 2; -> Here salary ko select kiya gya, then desc order me order kiya gya! then LIMIT ne bataya ki kitni row output me rakhni hai, and then OFFSET ne bataya ki kitni rows top se skip krni hai! so LIMIT = 1 means ek hi row output me ayegi! and then OFFSET = 2 means top se do rows skip krni hai! and then we get the third highest salary!

-- Co-Related Subquery : Isme inner and outer dono queries ek dusre pr depend kr rhi hoti hai!
-- Example : Question 1 : Write an SQL query to show the second highest salary from a table using co-related sub-query.
--         : Answer : SELECT salary FROM worker w1 WHERE 1 = ( SELECT COUNT(DISTINCT w2.salary) FROM worker w2 WHERE w2.salary > w1.salary);

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
select concat(first_name, ' ', last_name) from worker where salary between 50000 and 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department, count(worker_id) AS no_of_worker from worker group by department ORDER BY no_of_worker desc;

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
-- "Using" : The USING keyword in SQL is used in JOIN operations to specify the columns that should be used for the join condition. It simplifies the join syntax when the columns being joined have the same name in both tables.
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

-- Q-34. Write an SQL query to determine the 4th highest salary without using LIMIT keyword.
select salary from worker w1
WHERE 4 = (
SELECT COUNT(DISTINCT (w2.salary))
from worker w2
where w2.salary >= w1.salary
);
 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
select w1.* from worker w1, worker w2 where w1.salary = w2.salary and w1.worker_id != w2.worker_id;

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
select max(salary) from worker where salary not in (select max(salary) from worker);

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
-- Purpose of Normalisation : It is used to optimized the DB and its design, and to reduce data redudancy!

-- Understanding Functional Dependency :
-- Functional Dependency : It shows how attributes in a table are related. Example : Given attributes A, B, C, D, the FDs A → B and A → C means...
--                       : B and C depend on A. Hence, A can uniquely determine B and C.
--                       : Determinant : The attribute(s) that uniquely identifies others (e.g. A).
--                       : Dependent : The attribute(s) identified by the determinant (e.g. B and C).
--                       : Example : In a employee table with 3 attributes, like Emp_ID, Emp_Name and Department!, now Emp Id is a primary key and it can uniquely identify Emp_name and departement!, so here Emp_ID is a determinant and other 2 are Dependent.

-- Types of Functional Dependencies : Trivial & Non-Trivial
-- Trivial : If B is a subset of A, then the FD A → B is trivial.
--         : Example : {Emp_ID, Name} → {Emp_ID} (a subset can always identify itself). & A → A or B → B (an attribute can always identify itself, as it is its own subset).
--         : Logic : If you know an attribute (e.g. Emp_ID), you naturally know a subset of it (like Emp_ID itself).
--         : Why to care about them : Trivial FDs serve as a baseline in dependency analysis. They help identify redundant information in the table that doesn’t add value to relationships or constraints.
--                                  : Example : {Emp_ID, Name} → {Emp_ID} shows that Name doesn’t contribute anything new to finding Emp_ID.
-- Non-Trivial : If B is not a subset of A, the FD A → B is non-trivial.
--             : Mathematical Condition : B is not a subset of A, and A ∩ B = ∅.
--             : Example : {Emp_ID, Name} → Emp_dept (here, B = Emp_dept is not part of A).
--             : Logic : If A → B and B is not a subset of A, it means A determines entirely new information about the table (or instance) through B.
--             : Why to care about them : Non-trivial FDs are the foundation of normalization (breaking down data into smaller, non-redundant tables). They help identify potential data anomalies like duplication or inconsistency.
--                                      : Example : {Emp_ID, Name} → Emp_dept shows that Emp_ID and Name uniquely determine the department. This relation is useful for organizing data.

-- Armstrong Axioms!
-- Armstrong’s Axioms are a set of rules used to derive new Functional Dependencies (FDs) from existing ones. They are logical rules that ensure database design is consistent and normalized.
-- Rules : Reflexive : If ‘A’ is a set of attributes and ‘B’ is a subset of ‘A’. Then, A -> B holds. Means suppose A = {a,b,c,d,e} and B = {a,b,c}, Since B is part of A, knowing all of A (super set) means you naturally know B (subset).
--                   : This rule states that attributes inherently "know themselves" or their subsets. It is the foundation for trivial FDs.
--                   : Need : Helps verify simple dependencies in the table (like subsets or attributes themselves).
--       : Augmentation : If A -> B, then adding an attribute C to both sides (e.g. AC -> BC) still holds true.
--                      : Example : Given [Emp_ID -> Emp_name]. Adding Emp_dept : {Emp_ID, Emp_dept} → {Emp_name, Emp_dept}.
--                      : Adding extra information (C) doesn’t change the fact that A → B. The rule allows us to "expand" existing FDs logically without violating the dependency.
--                      : Need : Useful when combining or analyzing FDs in cases where new attributes are added to the relation.
--       : Transitivity : If A -> B and B -> C, then A -> C. Given, Emp_ID -> Emp_name, Emp_name -> Emp_dept By transitivity, Emp_ID -> Emp_dept.
--                      : This rule lets us derive new dependencies by "chaining" existing ones. If A leads to B and B leads to C, then A inherently leads to C.
--                      : Crucial for simplifying relationships and ensuring all FDs are captured in database normalization.

-- Now the question is, Why Normalization!
-- Normalization is a systematic process in database design that organizes data to minimize redundancy (duplicate data) and improve data integrity.
-- Redudancy : Redundancy means storing the same piece of data multiple times in a database.
-- Problems cause by Redudancy : Increased storage, Data Inconsistency and 3 Anomalies : Insertion, Deletion and Updation Anomaly!

-- Insertion Anomalies : Insertion anomalies occur when you cannot add certain data to the database without the presence of other, unrelated data. This happens when all information is stored in a single table, creating dependencies that complicate the addition of new data.
--                     : Example Scenario : Suppose someone designed a database table with the following attributes : ID | Name | Age | Branch_Code | Branch_Name | Branch_HOD.
--                                        : Problem 1 : Adding Partial Information, Imagine a new student enrolls in the college. We know : Name, Roll Number (ID), and Age. But Branch_Code, Branch_Name, and Branch_HOD are not decided yet. To insert this student's data, we would have to leave the branch-related attributes as NULL until the information is available.
--                                                    : This results in incomplete records and forces extra updates later to fill the missing information, which is inefficient.
--                                        : Problem 2 : Adding Branch Details, Now suppose the college opens a new branch (e.g., IT). To add the branch's details (Branch_Code, Branch_Name, Branch_HOD), we face a problem : The database design requires a Student ID (PK) to insert any row, but there are no students in the IT branch yet.
--                                                    : Issue : We cannot add information about the new branch because student-related data is missing.

-- Deletion Anomalies : A deletion anomaly occurs when deleting some data unintentionally removes other important information due to poor database design.
--                    : Example Scenario : Considering the same table, If a branch has only one student and that student graduates (leaves the college), their data will be deleted from the table. Unintended Consequence: The branch information (e.g., Branch_Code, Branch_Name, Branch_HOD) will also be deleted, even though the branch still exists in the college.
--                                       : Solution : Normalize the database by splitting the data into two tables : Student Table for student-specific details. Branch Table for branch-related details.

-- Updation Anomalies : An updation anomaly occurs when updating a single piece of information requires changes in multiple rows, leading to inefficiency and potential data inconsistency if all updates are not made correctly.
--                    : Example Scenario : Considering the same table, If the HOD of a department changes, we need to update the Branch_HOD in every row corresponding to that branch.
--                                       : Issues : Redundancy : The same data is repeated in multiple rows, so all rows need to be updated.
--                                                 : Time-Consuming : Updating multiple rows for a single change takes more time.
--                                                 : Data Inconsistency : If some rows are missed during the update, it leads to inconsistent data.
--                                       : Solution : Normalize the database to store branch-specific details (like Branch_HOD) in a separate Branch Table. The Student Table would reference the Branch Table using Branch_Code as a foreign key. Updating the Branch_HOD in the Branch Table automatically reflects in all related data.

-- Hence, due to these factors, To address these issues and optimize the database, we use Normalization. Normalization involves dividing data into multiple tables to eliminate redundancy and minimize anomalies.
-- For example, instead of storing Student and Branch data in a single table, we create separate tables for each entity (e.g., Student Table and Branch Table) and link them using foreign keys. Outcome, This reduces database size, improves efficiency, and ensures data consistency.
-- Overall, we use the normal forms which are used to reduce redundancy from the database table.
-- In normalization, we decompose tables into smaller ones to remove redundancy and avoid anomalies. We continue decomposing the tables until we achieve a design that adheres to the Single Responsibility Principle (SRP), meaning each table has only one responsibility (or purpose).
-- How We Achieve SRP : We use Normal Forms (such as 1NF, 2NF, 3NF, etc.) to guide this decomposition process. Each normal form helps in eliminating specific types of redundancy and ensures the data is logically organized.
-- Outcome : By applying normal forms and following SRP, we optimize the database, improving data integrity and efficiency while reducing redundancy.

-- Types of Normal Forms : 1NF, 2NF, 3NF and BCNF!
-- 1NF (1st Normal Form) : 1NF is the first step in the normalization process. It focuses on making sure that the table is structured in such a way that each cell contains atomic values (single, indivisible values) and ensures there are no multi-valued attributes.
--                       : Key Concepts : Atomic Values : Each column in the table must contain a single value, not a set or list of values.
--                                      : No Multi-Valued Attributes : If an attribute (column) holds multiple values, it violates 1NF. We must decompose it into multiple attributes or create separate rows to store these values.
--                       : Steps : Remove Multi-Valued Attributes : If an attribute contains multiple values in a single cell (e.g., multiple phone numbers in one column), we need to split these into individual rows or multiple columns.
--                               : Ensure Atomicity : Ensure each cell contains only one value, such as a single phone number or a single email.
--                       : What about the Primary Key : The Primary Key (PK) plays a crucial role in ensuring that each row in a table is uniquely identifiable. In the context of 1NF, when we break up the multi-valued attributes into individual rows, we must also consider how to maintain a unique identifier for each row.
--                                                    : Solution : To ensure uniqueness for each row, we need a composite primary key or a surrogate key (a new unique identifier).

-- 2NF (2nd Normal Form) : Pre-requisite : To implement 2NF, the table must already be in 1NF. Main Idea is to Eliminate Partial Dependency!
--                       : Partial Dependency : Partial Dependency happens when a non-prime attribute (a non-key attribute) depends on only part of a composite primary key (instead of the whole composite key).
--                       : 2NF Condition : To satisfy 2NF, every non-prime attribute must depend on the entire primary key, not just part of it.
--                       : Non Prime Attribute : Non-prime Attribute: Attributes that aren't part of the primary key. In a table where the primary key is composed of multiple attributes (like A and B), anything other than A and B would be a non-prime attribute.
--                       : Problem : Partial Dependency : Let’s consider a table R(A, B, C, D) where, Primary Key : (A, B) — meaning that the combination of A and B uniquely identifies each row. Non-prime Attributes : C and D.
--                                 : Now, suppose there's a functional dependency B -> C, which means B determines C. This is a partial dependency, because B is only part of the composite primary key (A, B), but C depends on just B, not the entire primary key. In this case, C depends on part of the composite primary key (B), which violates 2NF.
--                                 : Why its a problem : If B is part of the primary key but is allowed to be NULL, we could have an issue. For example, if B is NULL, it doesn’t make sense for B to determine C. So, partial dependency could lead to inconsistent data or make the data difficult to manage. That's why it is important to eliminate it!
--                                 : Solution : To remove partial dependency, we decompose the table into two smaller tables : R1(A, B, D) — where the primary key is A, B. And [A,B] -> D.
--                                                                                                                           : R2(B, C) — where the primary key is just B. And [B] -> C.

-- 3NF (3rd Normal Form) : To achieve 3NF, the database must first be in 2NF. After achieving 2NF, the next step is to remove transitive dependencies.
--                       : A transitive dependency exists when a non-prime attribute depends on another non-prime attribute, rather than depending directly on the primary key.
--                       : Key Rule for 3NF : No non-prime attribute should depend on another non-prime attribute.
--                       : Understanding with an Example : | A | B | C |
--                                                         | a | 1 | x |
--                                                         | b | 1 | x |
--                                                         | c | 1 | x |
--                                                         | d | 2 | y |
--                                                         | e | 2 | y |
--                                                         | f | 3 | z |
--                                                         | g | 3 | z |
--                                                       : A is the Primary Key (PK). B and C are non-prime attributes (they are not part of the primary key).
--                                                       : From the given table, we can observe the following functional dependencies (FDs) : A → B : Attribute A determines B. B → C : Attribute B determines C. From the above, using the Transitivity Rule of functional dependencies, we can also say : A → C : Because A → B and B → C, we get that A indirectly determines C.
--                                                       : Problem with it : Transitive Dependency: We have a transitive dependency between A and C via B. Even though A directly determines B, and B directly determines C, the primary key (A) is still indirectly determining C, which makes the relationship redundant.
--                                                                         : Why is this a problem? This causes redundancy in the data (repeated values), as B is already determining C. We don't need B → C in this case, because A → C already exists. Redundant Data : You can see that values in column C are repeated for each corresponding value in column B, even though A can determine C.
--                                                       : Solution : To eliminate this transitive dependency, we need to decompose the table into two smaller tables. The goal is to remove the dependency of a non-prime attribute on another non-prime attribute.
--                                                                  : Procedure : Identify Redundant Dependency, In this case, the dependency B → C is creating redundancy. We will split the original table into two : A table where A → B holds. A table where B → C holds.
--                                                                  : | A | B |     | B | C |
--                                                                  : | a | 1 |     | 1 | x |
--                                                                  : | b | 1 |     | 2 | y |
--                                                                  : | c | 1 |  &  | 3 | z |
--                                                                  : | d | 2 |
--                                                                  : | e | 2 |
--                                                                  : | f | 3 |  
--                                                                  : | g | 3 |

-- BCNF (Boyce-Codd Normal Form) : BCNF is an advanced version of 3NF (Third Normal Form) used in relational database normalization to ensure minimal redundancy and better data integrity. In simple terms, BCNF eliminates any anomalies caused by functional dependencies where a non-key attribute determines a key attribute.
--                               : Quick Recap of Normalization Stages : 1NF (First Normal Form) : No repeating groups or arrays; every column contains atomic (indivisible) values.
--                                                                     : 2NF (Second Normal Form) : No partial dependencies; every non-prime attribute is fully dependent on the primary key.
--                                                                     : 3NF (Third Normal Form) : No transitive dependencies; a non-prime attribute cannot depend on another non-prime attribute.
--                               : Every determinant (attribute or set of attributes on the left-hand side of a functional dependency) must be a candidate key. A candidate key is a minimal set of attributes that uniquely identify a row.
--                               : Understanding with an Example : | Stud_ID | Subject | Professor |
--                                                                 |    1    |  Java   |    PJ     |
--                                                                 |    1    |   CPP   |    PC     |
--                                                                 |    2    |  Java   |    PJ2    |
--                                                                 |    3    |   C#    |    PC#    |
--                                                                 |    4    |  Java   |    PJ     |
--                                                               : Constraints on the Table : A student (Std_ID) can enroll in multiple subjects. For each subject, a professor is assigned to the student. Multiple professors can teach the same subject. A professor can only teach one subject.
--                                                               : Primary Key : The combination {Std_ID, Subject} uniquely identifies each record, so it is the primary key (PK).
--                                                                             : Functional Dependencies (FDs) : {Std_ID, Subject} → Professor (The combination of student and subject determines the professor teaching them).
--                                                                                                             : Professor → Subject : (Each professor teaches exactly one subject.)
--                                                               : Why the Table Violates BCNF : For BCNF, every determinant (left side of a functional dependency) must be a candidate key.
--                                                                                             : In the functional dependency Professor → Subject, Professor is a non-prime attribute (not part of the primary key), but it determines Subject (a prime attribute). This violates the BCNF rule because Professor is not a candidate key.
--                                                               : Steps to Convert to BCNF : FD to Resolve : Professor → Subject, Here, Professor is not a candidate key, but it determines Subject. Create a separate table for this dependency.
--                                                                                          : Decomposition into Two Tables : Table 1 : Student-Professor Table : Contains the student and professor mapping, Attributes : Std_ID, Subject, Professor, Functional Dependency : {Std_ID, Subject} → Professor
--                                                                                                                          : Table 2 : Professor-Subject Table : Contains the professor and subject mapping, Attributes : Professor, Subject, Functional Dependency : Professor → Subject

-- Advantages of Normalization : Minimizes Data Redundancy : It removes duplicate data across tables.
--                             : Better Database Organization : Data is structured logically, making it easier to understand and manage.
--                             : Maintains Data Consistency : Since data is stored in one place, any update happens in a single location, preventing mismatches.

-- ----------------------------------------------------------------------- Lecture 12 : Transactions in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- Transactions : A transaction is a logical unit of work in a database that includes one or more SQL operations.
--              : From the user's perspective, it looks like a single action, but from the database's perspective, it can be broken into multiple smaller steps. All these steps together form the transaction and must satisfy certain properties to maintain data integrity.
--              : Example : Suppose a bank transaction involves transferring ₹50 from Account A to Account B.
--                        : Steps in the transaction : Read(A) : Check balance in Account A (₹100).
--                                                   : A = A - 50 : Deduct ₹50 from Account A (balance becomes ₹50).
--                                                   : Write(A) : Save the updated balance of Account A.
--                                                   : Read(B) : Check balance in Account B (₹200).
--                                                   : B = B + 50 : Add ₹50 to Account B (balance becomes ₹250).
--                                                   : Write(B) : Save the updated balance of Account B
--              : The entire transaction must be atomic, meaning all 6 steps should execute successfully. If an error occurs in any step, the transaction should rollback, undoing any partial changes.

-- Whenever a transaction happens in a database, it must follow ACID properties to ensure reliability and consistency.
-- A : Atomicity - Either all steps in a transaction are completed or none are.
-- C : Consistency - The database moves from one valid state to another.
-- I : Isolation - Transactions do not interfere with each other.
-- D : Durability - Once a transaction is complete, its changes are permanent.

-- How Read and Write Operations Work : Read Operation : The value from the database is copied into a temporary buffer (e.g., if A = 1000, it’s copied to the buffer).
--                                    : Operation : Changes are made to the value in the buffer memory (e.g. A = A - 50 changes the buffer value to 950).
--                                    : Write Operation : The updated value in the buffer (950) is saved back to the database.
--                                    : Commit Operation : In modern databases, changes are stored in a local buffer first. After all steps of the transaction are complete, the commit operation ensures the updated values are permanently saved in the main database. This prevents incomplete changes if an error occurs midway.

-- ACID Properties of Transactions in DBMS!
-- Atomicity : A transaction is a group of operations. Either all operations complete successfully, or none should be reflected in the database.
--           : Example : Suppose A transfers ₹50 to B. The transaction involves steps like reading A's balance, deducting ₹50, and adding ₹50 to B. If an error occurs at any step (e.g., while writing to B), the system should roll back to the original state where no money was deducted from A, ensuring no partial updates.
--           : How it works : The database maintains two states : Old state : The state before the transaction starts.
--                                                              : Intermediate state : Temporary changes made during the transaction.
--           : If a transaction fails, the system reverts to the old state. If it succeeds, the changes become permanent. This ensures data consistency and no half-done transactions.

-- Consistency : The database should always maintain valid and meaningful data before and after a transaction.
--             : Example : If ₹50 is deducted from A’s account, exactly ₹50 should be added to B’s account. The total money in both accounts before and after the transaction must remain the same.
--             : This ensures that the integrity constraints (like account balances or totals) are always maintained.

-- Isolation : In a system with multiple transactions running concurrently, they should not interfere with each other.
--           : Example : Suppose two transactions, T1 (via Google Pay) and T2 (via Net Banking), run simultaneously : T1 reads A’s balance as ₹1000 and deducts ₹50, making it ₹950.
--                                                                                                                  : At the same time, T2 also reads A’s balance as ₹1000 and deducts ₹50.
--                                                                                                                  : If they proceed independently, B might incorrectly receive ₹100 (₹50 from T1 + ₹50 from T2), and A’s final balance would still show ₹950 instead of ₹900. This creates inconsistency.
--                     : Solution : Transactions must execute in isolation to prevent such issues. Either T1 completes first, and then T2 starts, or vice versa.
--                                : The system ensures that each transaction sees a consistent view of the data and is unaware of other transactions happening simultaneously.

-- Durability : Ensures that once a transaction is committed, its changes are permanent and persist even after system failures. Only concerns the Committed State.
--            : For Intermediate States, Failures in intermediate states (e.g., Active or Partially Committed) are managed by Atomicity, Consistency, Isolation and Logging Mechanisms!
--            : Example : If T1 successfully updates A’s balance to ₹950, this change must be permanently stored in the database, even if there’s a power failure or crash immediately after.
--                      : How it works : The Recovery Management Component ensures durability.
--                                     : Before making changes permanent, the system maintains logs (records of each step of the transaction).
--                                     : These logs are stored in stable memory (e.g. disk) and can be used to recover the database after a crash.
--                                     : On restarting the system, the database checks these logs and resumes from where it left off to ensure the transaction is fully completed.

-- States of Transaction in DBMS!
-- Active State : The very first state of the life cycle of the transaction, all the read and write operations are being performed. If they execute without any error the T comes to Partially committed state. If any error occurs then it leads to a Failed state.
-- Partially Committed State : Changes are temporarily saved in the buffer (main memory). If changes are permanently saved in the database, it moves to the Committed State; otherwise, to the Failed State.
-- Committed State : Updates are permanently saved in the database, achieving a new consistent state. Rollback is no longer possible from this state.
-- Terminated State : The final state where the transaction has either committed or aborted.
-- Failed State : Occurs when a transaction cannot continue due to an error or failure during execution.
-- Aborted State : After reaching the Failed State, all changes are rolled back, and the database is restored to its state before the transaction. The transaction is now considered aborted.

-- ----------------------------------------------------------------------- Lecture 13 : Implementing Atomicity and Durability --------------------------------------------------------------------------------------------------------------------------------->
-- Recovery Mechanism Component of DBMS supports Atomicity and Durability!
-- The two ways to implement Atomicity and Durability are : Shadow Copy Scheme & Log Based Recovery Scheme!

-- Shadow Copy Scheme!
-- The shadow copy scheme is a recovery mechanism in DBMS that ensures atomicity (all-or-nothing execution of a transaction) and durability (changes remain permanent after a transaction is committed).
-- Key Components : Old DB Copy on Disk : This is the original database state stored on the disk before any transaction starts.
--                : DB Pointer : A pointer (db-pointer) maintained on the disk that always points to the current active copy of the database.
--                             : Initially, it points to the Old DB Copy, which represents the consistent state of the database.
--                : Transaction Workflow : When a transaction (T) starts, it creates a new copy of the entire database (called the shadow copy).
--                                       : All changes related to the transaction are made on this shadow copy, leaving the old copy untouched.
--                : Commit Process : The transaction is committed only when the db-pointer is updated to point to the new copy.
--                                 : Before this update, the new copy is just temporary, and the changes are not persistent.
--                : Rollback and Failure Handling : If the system fails before the db-pointer is updated : The db-pointer still points to the old copy, so the old copy remains intact. The new copy is discarded, and no changes are reflected.
--                                                : This ensures that atomicity is maintained, i.e., either the transaction is fully completed or it has no effect at all.
--                : Post-Commit Durability : If the db-pointer is successfully updated to the new copy : The changes are considered committed. Even if the system fails after this step, the db-pointer points to the new copy when the system restarts, ensuring durability.

-- How Shadow Copy Scheme Ensures ACID Properties : Atomicity : If a failure occurs before the db-pointer update, the old copy is untouched, ensuring that either all updates are applied or none are.
--                                                : Durability : A transaction is considered successful only when the db-pointer is updated. If the system fails before this, the old DB copy is still accessible. If the system fails after this, the db-pointer already points to the updated state, ensuring the changes persist.
--                                                             : Suppose, what if system fails right at the time when DB pointer is getting updated, so if that happens, this process of transfer of DB pointer from Old DB to New DB should be atomic in nature! Either it will go to COMMIT and point to new DB, or it will point to the original DB and it will be aborted!

-- Why Shadow Copy Scheme is Inefficient : Space Requirements : Every transaction requires creating a complete copy of the database. For large databases, this consumes significant storage space, which is impractical to manage.
--                                       : Time Complexity : Creating a new copy of the database for every transaction can take a long time, especially if the database is large. This makes the shadow copy scheme slow and unsuitable for systems with frequent updates.

-- Log Based Recovery!
-- It's a method to ensure database consistency and recovery in case of system failure.
-- All operations (reads, writes, updates) are recorded as logs in a stable storage space, separate from where the database is stored. Stable storage ensures that logs are preserved even if the system crashes.
-- Log Structure : Logs contain details about transactions such as : Transaction start (<T, Start>). Operations and their data changes (<T, A, old_value, new_value>). Commit status (<T, Commit>).
-- Working : Logs are sequential records of every action a transaction performs.
--         : Before any actual change is made to the database, its corresponding log entry is written to the stable storage.
--         : These logs act as a reference to recover or redo actions in case of failure.

-- Types of Log Based Recovery : Deferred Database Modification & Immediate Database Modification!
-- Deferred Database Modification : Key Idea : All updates are logged but not applied to the database until the transaction is successfully completed. Changes are deferred until the commit state is reached.
--                                : Working : Log every intended modification first. Only when the transaction completes, use the log to apply all updates to the database. If the transaction fails or is aborted, ignore the logs, as no changes have been applied yet.
--                                : Advantages : Ensures atomicity as no partial changes are made to the database. and Easy to handle failures before the commit just discard the logs.
--                                : Failure Handling : If the system fails before commit : No changes were made to the database, so simply ignore the logs.
--                                                   : If the system fails during the process of applying logs : Use the logs to redo all the updates.
-- Immediate Database Modification : Key Idea : Changes are applied to the database as the transaction progresses, immediately after writing the logs. Logs include both old values and new values, making recovery more dynamic.
--                                 : Working : For every operation, create a log entry like <T, A, old_value, new_value>. Apply the changes to the database immediately after logging. If the transaction fails, use the log to undo the changes using old values.
--                                 : Advantages : Faster than deferred modification as changes are applied during the transaction. Logs can be used for both undo (old value) and redo (new value) operations.
--                                 : Failure Handling : If the system fails before commit : Use the old values from the logs to undo the changes.
--                                                    : If the system fails after commit : Use the new values from the logs to redo the changes.

-- Advantages of Log-Based Recovery : Ensures atomicity : Either all changes occur, or none.
--                                  : Handles failures gracefully : Before commit : Discard logs or undo changes.
--                                                                : After commit : Use logs to redo changes.
--                                                                : Logs act as a record of intent : They are crucial for recovery and troubleshooting.

-- Why Logs Before Database Changes : Writing logs first ensures that even if a system fails during the update, the logs can restore or redo the database to a consistent state.
--                                  : Without logs, recovery wouldn’t be possible because there’s no record of what was attempted.

-- Overall difference between Deferred and Immediate Log Based Recovery!
-- Updates Are Applied	: After transaction commits | During transaction execution
-- Log Fields : <T, A, value> | <T, A, old_value, new_value>
-- Undo Capability : Not required | Uses old values from logs
-- Redo Capability : Uses logs to redo after commit | Uses new values from logs
-- Failure Before Commit : Ignore logs; no changes were made | Undo changes using logs
-- Failure After Commit	: Redo changes using logs | Redo changes using logs

-- ----------------------------------------------------------------------- Lecture 14 : Why Indexing is Important in DBs --------------------------------------------------------------------------------------------------------------------------------->
-- Problem : In relational databases, data is stored in the form of tuples (rows). When you want to access specific data, searching through a large number of tuples can take a lot of time.
-- Solution : To make data access faster, we use indexing. Here's how it works : Grouping Tuples into Blocks : Tuples are grouped into blocks, and each block contains a fixed number of tuples.
--                                                                             : Block Pointers (Base Pointers) : Each block has a unique pointer called a block pointer or base pointer.
--                                                                             : Index Table/File : An additional table called the index table is created. This table stores the block pointers for all the blocks.
--          : How it helps : Instead of searching through all the tuples, the system first looks at the index table to find the block pointer. The pointer directly takes it to the required block, making the search much faster.
--          : Analogy : Think of it like a book's index, Instead of reading every page, you check the index to find the page number for a topic and go directly to that page.

-- Scenario : Imagine a database containing 10,000 records (tuples). To optimize data access, the tuples are divided into blocks, with each block containing 10 tuples.
--          : If you want to search for a specific tuple using its Primary Key (PK) : You could use Linear Search, but it would be time-consuming. Since PKs are sorted, you could use Binary Search, which is faster but still processes all 10,000 records.
--          : The Optimization with Indexing : To make the search process even faster, we introduce an index table, What is an Index Table? It’s a separate, smaller table created for the database. The index table stores primary keys from the main table at fixed intervals (e.g., every 10 tuples) along with the base pointer (BP) for each block. The Base Pointer (BP) indicates the starting location of a block in the database.
--          : Example : For a database with 10,000 tuples, and blocks containing 10 tuples each, the index table will look like this :             INDEX TABLE
--                                                                                                                                     Primary Key (PK) | Base Pointer (BP)
--                                                                                                                                     -------------------------------------
--                                                                                                                                     1                | BP1
--                                                                                                                                     11               | BP2
--                                                                                                                                     21               | BP3
--                                                                                                                                     ...
--                    : How it works : Let’s say you want to find the tuple with Primary Key 15. Here's the step-by-step process...
--                                   : Search in the Index Table : Apply Binary Search on the index table (which has only 1,000 entries).
--                                                               : Find the relevant block : For PK 15, it will fall between PK 11 and PK 20 in the index table. From the index table, locate the Base Pointer (BP2) of the block containing PK 11.
--                                   : Jump to the Database Block : Using BP2, directly access the block in the database that starts with PK 11.
--                                   : Traverse the Block : From the starting point (PK 11), traverse forward 4 tuples to reach PK 15.

-- Key Benfits : Smaller Search Space : The index table reduces the number of records to search from 10,000 to 1,000. Binary search on this smaller table is much faster.
--             : Direct Access : The Base Pointer allows the system to jump directly to the relevant block in the database, skipping unnecessary records.
--             : Optimized Search in Blocks : After reaching the block, only a few records need to be traversed linearly.

-- Why it's efficient : Reduction in Complexity : Searching the index table has a time complexity of O(log n) (Binary Search).
--                                              : Accessing the block and traversing it is a constant-time operation, making the overall process highly efficient.
--                    : Scalability : Even as the database grows, indexing ensures quick access by minimizing the number of records involved in the search process.

-- Types of Indexing : Primary Indexing & Secondary Indexing!
-- Primary Indexing : Primary Indexing is a type of indexing used in databases to improve search performance. It is created when the database records (data file) are sorted based on a search key, typically a unique primary key. The primary index acts as a guide to quickly locate the records in the data file.
-- Key features : Sorted Data File : The records in the data file must be sorted based on the key column (e.g., roll number, account ID). This sorting is a requirement for primary indexing to work effectively.
--              : One Index Entry per Block : The primary index contains one entry for each block (or group) of data in the data file. A block contains multiple records.
--              : Smaller Index Table : Since there is only one index entry per block, the index table is smaller and faster to search.
--              : Key and Pointer : Each index entry consists of, Search Key which is a value from the sorted data file (e.g., roll number). Pointer which is a reference to the block in the data file where the record(s) reside.
-- How Does Primary Indexing Work : Data File Organization : Records in the data file are stored in blocks. The data is sorted based on a key attribute (e.g., roll number).
--                                : Index Table Creation : The index table is created with one entry for each block in the data file.
--                                : Each entry in the index table contains : Search Key : The smallest key value in the block.
--                                                                         : Pointer: A reference to the block in the data file.
--                                : Search Process : First, the index table is searched to find the block where the record might exist. Then, the specific record is found within the block using linear or binary search.
-- Idea of Primary Indexing : Dense Index : Contains an entry for every record in the data file. Each record in the data file has a corresponding key and pointer in the index table.
--                                        : Advantage : Faster search, as every record is indexed. Disadvantage : Larger index table.
--                          : Sparse Index : Contains an entry for each block in the data file, not every record. Each entry points to the first record in the block.
--                                         : Advantage : Smaller index table. Disadvantage : Slightly slower search, as you may need to scan within the block.
-- Primary Indexing based on Key & Non-Key Attributes : In database systems, primary indexing helps to quickly access data by creating an index table, but the way the data is indexed depends on whether the indexing is done using a key attribute or a non-key attribute.
--                                                    : Key Attribute : A key attribute is a unique identifier, like a Primary Key (PK), where no two rows in the database have the same value for this attribute. The data file is sorted based on the key attribute, and the index is created accordingly.
--                                                                    : Key Features : Sorted Data File : The main database table (data file) is sorted by the primary key (e.g., Roll Number, Employee ID).
--                                                                                   : Sparse Index : The index file contains one entry for each block of the data file. The number of index entries equals the number of blocks in the data file.
--                                                                                   : Search Key in Index Table : The primary key is used as the search key in the index table.
--                                                                    : Working : The index table is created with two columns : Primary Key : The smallest key in each block of the sorted data file.
--                                                                                                                            : Pointer : A reference (base pointer) to the corresponding block in the data file.
--                                                                    : To search for a specific record : Search the index table using the key (e.g., binary search). Use the pointer to jump to the corresponding block in the data file. Search within the block to find the record.
--                                                    : Non-Key Attribute : A non-key attribute is a column that can have duplicate values, unlike a primary key. For example, "Department" in an employee database or "Category" in a product database.
--                                                                        : Clustering Index : When the data file is sorted based on a non-key attribute, a clustering index is created. This index helps group records with the same non-key attribute value into clusters in the data file.
--                                                                        : Key Features : Sorted Data File : The data file is sorted based on the non-key attribute (e.g., Department, Category).
--                                                                                       : Dense Index : The index contains one entry for each unique value of the non-key attribute in the data file. Each entry points to the first occurrence of that value in the data file.
--                                                                                       : Duplicate Values : Since the attribute is a non-key, its values can repeat in the data file. The index groups these duplicates into clusters.
--                                                                        : Working : The index table is created with two columns : Non-Key Attribute : The unique values of the non-key attribute.
--                                                                                                                                : Pointer : A reference (base pointer) to the first record of each unique value in the data file.
--                                                                                  : To find a record : Search the index table using the non-key attribute. Use the pointer to jump to the first occurrence of the value in the data file. Sequentially search the data file for additional records if needed (as duplicates are stored together).
--                                                                        : Need of Cluster Indexing : Clustering indexes are especially useful in GROUP BY queries, where records are grouped by a non-key attribute. For example : Grouping employees by "Department". Grouping products by "Category".
--                                                                                                   : By clustering similar records together in the data file, clustering indexes improve query performance and make searching more efficient.
--                                                                        : Advantages : Faster Query Processing, Efficient Storage & Supports Duplicate Values.
--                                                                        : Disadvantages : Static Structure & Limited use cases!
-- Multi-Level Indexing : (In Extension of Primary Indexing) Multi-level indexing is a technique used to optimize the performance of indexing when the size of a single index becomes too large, and even binary search on that index takes too much time. To break it down, multi-level indexing creates an additional layer (or multiple layers) of indexes to make searching even faster by reducing the number of entries that need to be searched at each level.
--                      : Key Points : Problem with Single-Level Indexing : In single-level indexing, all data entries are stored in one index file. Binary Search is used on this index to find the required record quickly. But when the data set grows very large (i.e., when there are a lot of records), even searching the index using binary search can take significant time because the index itself becomes large.
--                                   : For example, if there are millions of records, the index can become very long, and binary search on such a large index might still take considerable time.
--                      : Solution is Multi-Level Indexing : Multi-level indexing works by breaking down the large index into smaller sub-indexes (i.e., creating additional levels of indexing). Instead of searching through a massive single index, you search through a smaller index first (the first level) and then use that smaller index to find the actual record.
--                      : How It Works : Level 1 Index : This is your first level of index, which could contain pointers to blocks in your data file (or to the second-level indexes).
--                                     : Level 2 Index : The second-level index would contain pointers to specific entries in the first-level index (i.e., pointers to ranges of data in the data file).
--                                     : Level N Index : You keep adding levels as needed, depending on how large the data set and indexes are.
--                                     : So, it’s like having multiple layers of search, where each level reduces the amount of data you need to search through.
--                      : Efficiency : The more levels you add, the fewer entries you have to search through at each level. This reduces the number of operations needed to find the correct record.
--                                   : As the data grows larger, the number of levels grows as well. The overall time complexity is reduced because, at each level, the size of the data you are searching is smaller.

-- Secondary Indexing : Secondary indexing is used when the data file is unsorted, and we want to efficiently search based on some attribute (either a primary key (PK) or a non-primary key (non-PK)).
--                    : It’s called secondary indexing because there is already a primary index applied on the data file, and this secondary index helps to speed up searches on non-key attributes. Secondary indexing helps improve search efficiency when the data is not sorted by the attribute on which we are applying the index.
--                    : Why Do We Use Secondary Indexing : In some cases, we may have a primary index applied based on one attribute (usually the primary key), but the data may not be sorted by another attribute (especially non-key attributes).
--                                                       : For example : Imagine a database table that is sorted by primary key (e.g., ID). But the data is unsorted by another attribute, such as name or age.
--                                                                     : If we want to search by name or age, a simple binary search won't work because these attributes aren't sorted. This is where secondary indexing comes in.
-- Types of Indexes in Secondary Indexing : Secondary indexing can be based on either PK or Non-PK.
--                                        : Primary Key (PK) : Even though the table is unsorted by the primary key, we can still create a secondary index using the primary key. This type of index will speed up searches by primary key in the unsorted data.
--                                        : Non-Primary Key (Non-PK) : Secondary indexing can also be done based on non-primary keys. This is often useful when we want to search by attributes that are not the primary key (e.g., searching by name, age, or category when the primary key is a unique ID).
-- Structure of the Index in Secondary Indexing : Dense Indexing : In secondary indexing, we use dense indexing. In dense indexing, every unique value from the data file (whether PK or non-PK) has an entry in the index table.
--                                                               : Each entry in the index table points to the base pointer of the block in the data file where the value exists. If the non-PK value appears multiple times in the data file (i.e., duplicate values), we create a linked list in the index table. Each duplicate value will have a pointer to its corresponding block.
-- How Secondary Indexing Works with Multiple Blocks : Problem with Unsorted Data : If a data file is unsorted, finding a specific record can be very slow because the data is not organized, and a linear search might be required, which is inefficient.
--                                                   : Solution with Secondary Indexing : By creating an index on the non-key attribute (e.g., Name), we speed up the search. The index table is sorted, so we can perform a binary search on the index table itself, which is much faster than scanning the entire data file.
--                                                   : If multiple records have the same value (duplicate entries), we link those base pointers in the index table. This way, we don’t lose information, and the search remains efficient.
-- Multi-Level Indexing in Secondary Indexing : (In Extension of Secondary Indexing) Just like primary indexing, multi-level indexing can be applied to secondary indexing as well, especially when the index grows too large. Multi-level indexing involves creating a hierarchy of indexes, where the first level index points to the second level, and so on.
--                                            : This helps optimize the search by reducing the search space at each level.
-- How Does Secondary Indexing Benefit Us : Improves Search Efficiency : In unsorted data, without an index, searching becomes slow (linear search). Secondary indexing allows us to use binary search on the index, speeding up the process significantly.
--                                        : Dense Indexing : Even for non-PK attributes that have duplicate values, the index still allows fast lookups by pointing to the base pointers of the blocks where those records exist.
--                                        : Optimizes Unsorted Data : In cases where the data file is unsorted (and sorting it is not feasible or efficient), secondary indexing optimizes searches and retrievals.
-- Formally : Data file is unsorted.
--          : Primary Indexing is not possible on this file.
--          : Secondary indexing can be done on key or non-key attributes.
--          : The index file will contain entries equal to the number of records in the data file.
--          : It’s called dense indexing because every unique value (from the attribute) gets an entry in the index.

-- ----------------------------------------------------------------------- Lecture 15 : SQL vs NoSQL --------------------------------------------------------------------------------------------------------------------------------->
-- NoSQL : NoSQL stands for "Not Only SQL." It refers to databases that are non-relational and do not rely solely on SQL for data access.
--       : Flexibility : These databases support various data models and provide flexibility in storing and accessing data, allowing the use of non-relational languages in addition to SQL.
--       : Examples : MongoDB, Cassandra, CouchDB, Redis, Neo4j.

-- NoSQL Characteristics : Data Storage : Non-tabular databases. Store data in diverse formats like documents, key-value pairs, wide-column stores, and graphs.
--                       : Data Types Supported : Structured, Semi-Structured, and Unstructured Data. Examples of unstructured data: Text files, chat messages, emails, etc
--                       : Schema : Schema-free or flexible schema design. Adapts to changes in data structure dynamically.
--                       : Scalability : Supports both vertical and horizontal scaling effectively. Horizontal scaling (adding more servers) is more practical and commonly implemented in NoSQL compared to SQL.
--                       : Big Data Handling : Capable of managing vast amounts of data (big data). Optimized for distributed systems.
--                       : Open Source : Most NoSQL databases are open source, making them cost-effective and community-driven.

-- SQL Characteristics : Definition : SQL databases are relational databases that use Structured Query Language (SQL) for defining and manipulating data.
--                     : Schema : Have a fixed schema with defined constraints. Suitable for structured data with strict relationships.
--                     : Data Types Supported : Primarily handles structured data. Uses relational tables with rows and columns.
--                     : Scalability : Primarily supports vertical scaling (adding more resources to a single server). Horizontal scaling is possible but less practical compared to NoSQL.
--                     : Examples : MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server.

-- History : NoSQL databases emerged in the late 2000s due to declining storage costs, enabling developers to handle unstructured data without complex schemas.
--         : Optimized for developer productivity, NoSQL offered flexibility for storing vast amounts of unstructured data, adapting to changing software requirements, and facilitating rapid iteration.
--         : With the rise of cloud computing, NoSQL databases supported distributed, scalable, and resilient applications across servers and regions, with capabilities like geo-placement of data, as seen in systems like MongoDB.

-- Data Modeling in SQL vs NoSQL : In SQL, data is stored in rows and columns with normalization to minimize redundancy. In NoSQL, data is stored as key-value pairs, similar to JSON files, allowing flexible data organization.

-- Advantages of NoSQL Databases : Flexible Schema : Unlike RDBMS with predefined schemas, NoSQL allows dynamic schema changes, making it easier to handle evolving data structures.
--                               : Horizontal Scaling (Scale-Out) : NoSQL supports both horizontal (distributing data across multiple servers) and vertical scaling (upgrading hardware), whereas SQL primarily relies on vertical scaling.
--                                                                : Horizontal scaling is more practical in NoSQL due to the lack of joins and relational constraints, enabling faster data retrieval.
--                                                                : Techniques like Sharding and Replica-sets facilitate horizontal scaling in NoSQL.
--                               : High Availability : NoSQL databases ensure data availability through auto-replication, replicating data across servers. Even if a server fails, data remains accessible from other servers.
--                               : Fast Insert and Read Operations : NoSQL queries are faster as data is typically stored together, avoiding costly joins required in SQL databases. This design optimizes query performance, especially in systems like MongoDB.
--                               : Caching Mechanism : Enhances performance by storing frequently accessed data for quick retrieval.
--                               : Cloud Application Use : NoSQL is well-suited for cloud applications due to its scalability and flexibility in handling distributed data.

-- When to Use NoSQL : Fast-paced Agile Development : Ideal for rapidly evolving applications, like Instagram quickly launching Reels after TikTok's ban.
--                   : Storage of Structured and Semi-structured Data : Handles diverse data formats flexibly.
--                   : Huge Data Volumes : Efficient for managing and querying large-scale datasets.
--                   : Scale-out Architecture : Supports horizontal scaling for cost-efficient performance.
--                   : Modern Applications : Suited for microservices, real-time streaming, and other contemporary paradigms.

-- Short Use Cases : Key-Value Stores : Real-time data access (e.g., user sessions, caching).
--                 : Column-Oriented Stores : When analytics is a priority.
--                 : Document-Based Stores : Flexible data structures for web apps and mobile platforms.
--                 : Graph-Based Stores : Applications requiring complex relationships, like social networks.

-- NoSQL DB Misconceptions : Relationship Data : Misconception : NoSQL databases can't handle relationship data effectively.
--                                             : Reality : NoSQL can handle relationship data, but it does so differently than SQL. Instead of using tables and joins, it nests related data in a single structure, which can simplify certain data models.
--                         : ACID Transactions : Misconception : NoSQL databases don't support ACID transactions.
--                                             : Reality : While this was true for early NoSQL databases, many modern NoSQL systems, such as MongoDB, now support ACID transactions, making them reliable for scenarios requiring strong consistency. But other's don't support!

-- Types of NoSQL Data Models!
-- Key Value Stores : Simplest type of NoSQL database where data is stored as a pair of a key and a value, like a dictionary in programming. Example : {"username": "Utkarsh"}
--                  : Working : The key acts like an identifier (e.g., "username"), and the value is the data associated with it (e.g., "Utkarsh"). Uses compact and efficient indexing to quickly retrieve data using the key.
--                  : Use Cases : Real-time systems like gaming or financial applications. Caching frequently accessed data. Storing user preferences, shopping carts, or profiles.
--                  : Examples of Databases : Redis, Amazon DynamoDB, MongoDB (supports this), Oracle NoSQL.

-- Column-Oriented (Wide-Column) Stores : Data is stored column by column instead of row by row (as in relational databases). Makes it fast to read specific columns (useful for analytics).
--                                      : Data stored in memory looks like this in row-wise (SQL) : [Utkarsh | Delhi | 22 | Palak | Lucknow | 20]. After `22` its a new row. In column-wise (NoSQL) : [Utkarsh | Palak | Delhi | Lucknow | 22 | 20].
--                                      : Column storage enables fast aggregation (like calculating the average of ages) because you can directly access and process only relevant columns.
--                                      : Pros : Faster for analytics and read-heavy operations. Efficient compression for columns of the same data type.
--                                      : Cons : Write, update, and delete operations are slower compared to row-wise storage.
--                                      : Use if your application is focused on analytics or fast read operations. Avoid for applications needing frequent write or update operations.
--                                      : Examples of Databases : Cassandra, HBase.

-- Document Based Stores : Stores data in document format, similar to JSON objects, where each document contains fields (keys) and their values.
--                       : Working : Documents can hold complex data like arrays and objects, making it flexible and ideal for modern applications. Supports ACID properties, making it suitable for transactional systems.
--                       : Use Cases : E-commerce platforms, mobile apps, and trading platforms. Examples of Databases : MongoDB, CouchDB.

-- Graph Based Stores : Data is stored as nodes (entities) and edges (relationships between entities). Example : Node : User (e.g., "Utkarsh"). Edge : Friendship (e.g., "Utkarsh is friends with Palak").
--                    : Working : Relationships are treated as first-class elements, meaning they are directly stored and easily accessible (unlike SQL, where relationships are implied using JOINs). Optimized for querying connections between data.
--                    : Use Cases : Social networks (friendship graphs like Facebook). Fraud detection (finding suspicious connections). Knowledge graphs.
--                    : Cons : Not ideal for standalone use in real-world systems, often used alongside other databases.
--                    : Examples of Databases : Neo4j, Amazon Neptune.

-- NoSQL Disadvantages : Data Redundancy : NoSQL databases may require more storage compared to SQL because they prioritize query optimization over reducing data duplication. Data redundancy can lead to larger storage requirements.
--                                       : However, storage costs are low, and some NoSQL databases offer compression to mitigate this.
--                     : Expensive Update & Delete Operations : Performing update and delete operations can be costly in NoSQL due to the need to rewrite large portions of data (especially in column-based stores).
--                     : Limited Use Case Coverage : Different NoSQL models (key-value, column, document, graph) are specialized for specific use cases. No single NoSQL database might support all application needs. For example, graph databases are good for analyzing relationships but may not be ideal for other operations like range queries.
--                     : Lack of ACID Properties : NoSQL databases generally do not support ACID (Atomicity, Consistency, Isolation, Durability) properties, which can be crucial for transactional consistency.
--                     : No Data Consistency Constraints : Many NoSQL databases do not support consistency constraints, which are important for ensuring that the data remains consistent across various operations.

--                                                   SQL                         vs                      NoSQL
-- Data Storage Model        ->   Fixed Rows and Columns                          |   Document Based like JSON, Key Value Pairs, Column Store and Graph Based
-- Development History       ->   Developed in the 1970s with a                   |   Developed in the late 2000s with a focus on scaling and allowing for rapid application change driven by agile and DevOps practices.
--                                focus on reducing data duplication.             |   
-- Examples                  ->   Oracle, MySQL, Microsoft SQL Server and more    |   Document based : MongoDB & CouchDB, Key-value Pairs : Redis & Dynamo DB, Column Store : Kasandra & HBase, Graph Based : Amazon Neptune & Neo4J.
-- Primary Purpose           ->   General Purpose                                 |   Document : General purpose, Key-Value Pairs : large amounts of data with simple lookup queries, Column Store : Large amount of data with with predictable query patterns, Graph : analyzing and traversing analysing relationships between connected data!
-- Schema                    ->   Fixed                                           |   Flexible
-- Scaling                   ->   Vertical                                        |   Horizontal
-- ACID Properties           ->   Supported                                       |   Not Supported except DBs like MongoDB!
-- JOINS                     ->   Typically Required                              |   Typically not required!
-- Data to Object Mapping    ->   Required object relational mapping              |   Many do not require ORMs. MongoDB documents map directly to data structures in most popular programming languages!

-- ----------------------------------------------------------------------- Lecture 16 : Types of Databases --------------------------------------------------------------------------------------------------------------------------------->
-- Relational DBMS : Popularity & History : Relational databases have been widely used since the 1970s and continue to be popular. They use SQL for operations like create, read, update, and delete (CRUD).
--                 : Data Structure : They store data in tables with rows and columns, and different tables can be linked using foreign keys. For example, a User table can be linked to a Purchases table using a user ID.
--                 : Advantages : Highly optimized for structured data and well-suited for handling data that follows a clear, organized structure. Provide strong data normalization, ensuring data consistency and reducing redundancy. Use SQL, a standardized and widely known querying language.
--                 : Disadvantages : Scalability issues : Relational databases often face challenges when it comes to horizontal scaling (scaling across multiple machines). As data grows, the system becomes more complex and harder to manage

-- Object Oriented Databases : Based on the object-oriented programming (OOP) paradigm, where data is treated as objects, similar to how objects are handled in programming languages. Supports key OOP concepts like inheritance, encapsulation (information hiding), and object identity.
--                           : Can handle complex data relationships and supports a rich type system (including structured and collection types).
--                           : Advantages : Easy & Quick Data Storage/Retrieval, Handles Complex Data Relations, Real-World Problem Modeling and Integration with OOPS Languages.
--                           : Disadvantages : Limited Community Support, Performance Issues and No Views Support.
--                           : Example : ObjectDB, GemStone, etc.

-- NoSQL Databases : Refer Lec 15 Notes.

-- Hierarchial Databases : A hierarchical database model is designed for use cases where information is organized in a structured hierarchy, making it an ideal choice for representing data that inherently follows a tree-like structure
--                       : Data is organized in a tree structure, where there is a root "parent" node connected to various child nodes. Each child record can have only one parent, while a parent record can have multiple children.
--                       : Data in records is stored in fields, and each field can hold only one value. Examples of this hierarchy : Organizational chart, File system directories.
--                       : Traversal : Data retrieval requires traversing the tree from the root node to the desired record.
--                       : Advantages : Ease of Use : The one-to-many relationship simplifies navigation and makes it easy to understand and implement. Fast and efficient for read-heavy operations such as drop-down menus or file systems.
--                                    : Data Independence : Changes to specific tables or records do not affect the overall database structure.
--                                    : Programming Support : Many programming languages natively support tree structures, enabling easy implementation and access.
--                       : Disadvantages : Inflexibility : It does not support many-to-many relationships, where a child can have multiple parent nodes.
--                                       : Inefficient Searching : Data retrieval requires sequential traversal from top to bottom, which can be slow.
--                                       : Redundancy : The hierarchical design often leads to data duplication, resulting in higher storage requirements and potential inconsistencies.

-- Network Databases : An extension of hierarchical databases that allows child records to associate with multiple parent records, organized in a graph structure.
--                   : Key Features : Supports complex relationships. Enables M:N (many-to-many) connections.
--                   : Advantages : Handles complex data relationships efficiently.
--                   : Disadvantages : Tedious maintenance. Slower retrieval due to M:N links. Limited web community support.
--                   : Example : IDS (Integrated Data Store), IDMS, Raima Database Manager, TurboIMAGE.

-- ----------------------------------------------------------------------- Lecture 17 : Clustering in DBMS --------------------------------------------------------------------------------------------------------------------------------->
-- Clustering/Replica-Sets : Clustering or replica-sets involve creating multiple replicas of a database, where each replica contains the same data. This ensures high availability, fault tolerance, and scalability in handling large numbers of requests or failures.
--                         : Need : Load Handling : A single database server may struggle to manage millions of requests simultaneously.
--                                : Fault Tolerance : If one database goes down due to maintenance, hacking, or a system crash, other replicas can continue serving requests.
--                                : Data Availability : Users get uninterrupted data access, regardless of which replica/cluster serves the request, as an abstraction layer ensures seamless access.
--                         : Advantages : High Availability, Fault Tolerance, Scalability and Improved Read Performance.
--                                      : Data Redudancy : Yes redudancy is not always bad, Clustering of databases helps with data redundancy, as we store the same data at multiple servers. Don’t confuse this data redundancy as repetition of the same data that might lead to some anomalies. The redundancy that clustering offers is required and is quite certain due to the synchronisation. In case any of the servers had to face a failure due to any possible reason, the data is available at other servers to access.
--                         : Key Features : Abstraction Layer : Users remain unaware of which database replica serves their request.
--                                        : Synchronous and Asynchronous Replication : Synchronous : Ensures all replicas have the same data at all times.
--                                                                                   : Asynchronous : Updates replicas with slight delays, improving performance but potentially causing minor inconsistencies.
--                         : Challenges : Replication Lag : In asynchronous replication, replicas may lag behind the main database, leading to inconsistent data for a short period.
--                                      : Maintenance Complexity : Managing multiple replicas and ensuring their synchronization requires additional resources and expertise.
--                                      : Resource Overhead : Clustering requires more hardware and storage.
--                         : Example : E-commerce Platforms (e.g., Amazon), Banking Systems and Content Delivery Networks (CDNs)

-- Working of Clusters : Architecture Overview : In clustering, incoming user requests are distributed across multiple systems (nodes) within the cluster.
--                                             : Execution by Nodes: Each request is processed by one or more nodes, ensuring that the workload is shared efficiently.
--                                             : Failure Handling : If one node fails, another node in the cluster seamlessly takes over, preventing system downtime.
--                     : Key Enablers : Load Balancing : Ensures that requests are evenly distributed across nodes, preventing overloading of any single system.
--                                    : High Availability : Reduces the likelihood of total system failure by maintaining redundant nodes ready to handle requests.

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