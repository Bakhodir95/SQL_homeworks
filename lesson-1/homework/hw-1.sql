Task_1
Data
Data refers to raw facts, figures, or statistics collected for reference or analysis. It can be in the form of numbers, text, images, or audio, and is unprocessed and meaningless until it is organized or analyzed.

Database
A database is an organized collection of data that is stored and accessed electronically. It allows for efficient storage, retrieval, and management of data.

Relational Database
A relational database is a type of database that stores data in tables (called relations), which are linked to each other through keys. It uses structured query language (SQL) to manage and query data.

Table
A table is a structured format for storing data in a relational database. It consists of rows and columns, where each row represents a record and each column represents a field (attribute) of the data.


Task_2 
Five Key Features of SQL Server

Data Security

Offers encryption, role-based access, and row-level security to protect sensitive data.

High Availability & Disaster Recovery (HA/DR)

Features like Always On Availability Groups, failover clustering, and log shipping help ensure continuous data access and recovery.

Performance Optimization

Tools such as indexing, query optimizer, and in-memory technologies improve database performance.

Integration Services

SQL Server Integration Services (SSIS) allows data import/export, transformation, and ETL operations between sources.

Business Intelligence & Reporting

Includes SQL Server Reporting Services (SSRS) and Analysis Services (SSAS) for reporting and data analysis.

Task_3
Authentication Modes in SQL Server (at least 2)

Windows Authentication

Uses Windows user accounts and Active Directory for authentication. More secure and recommended for enterprise environments.

SQL Server Authentication

Requires a SQL Server-specific username and password. Useful when Windows authentication isn’t available.

Medium 
Creating a new database in SSMS named SchoolDB.
create database schoolDB
Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
use schoolDB

create table StudentID (id int primary key, name varchar(50), age int)
select * from StudentID
insert into StudentID values (22,'Bakhodir2',143)


Describe the differences between SQL Server, SSMS, and SQL.
1. SQL Server

What it is:

SQL Server (Microsoft SQL Server) is a relational database management system (RDBMS) developed by Microsoft.

It is used to store, manage, and retrieve data as requested by applications.

Key Functions:

Stores structured data in tables

Supports transactions, triggers, stored procedures

Provides data security, backup, and recovery

Handles large volumes of data efficiently

🔷 2. SSMS (SQL Server Management Studio)

What it is:

SSMS is a graphical user interface (GUI) tool provided by Microsoft to interact with SQL Server.

It helps developers and database administrators manage databases, write and execute SQL queries, and monitor performance.

Key Features:

Query editor with syntax highlighting

Visual tools for creating tables, users, indexes, etc.

Backup/restore functionality

Server and database management

🔷 3. SQL (Structured Query Language)

What it is:

SQL is a programming language used to query and manipulate relational databases.

It is a standard language supported by most relational database systems, including SQL Server.

Common SQL Commands:

SELECT, INSERT, UPDATE, DELETE

CREATE TABLE, ALTER TABLE, DROP

JOIN, GROUP BY, ORDER BY
