# SQL Internship - Task 2: Data Insertion and Handling Nulls (MySQL)

# About the Task
This task focuses on practicing DML (Data Manipulation Language) operations in MySQL. The goal was to insert data into a relational database, handle missing values using `NULL`, and work with `UPDATE` and `DELETE` queries to maintain clean and consistent data.

# Database Overview
I worked on a database called **RentalDB**, which is built to manage a rental property system. It includes six tables:

- `Locations`
- `Owners`
- `Properties`
- `Renters`
- `Bookings`
- `Payments`

Each table is connected properly using foreign keys to maintain relationships between owners, properties, renters, bookings, and payments.


# What I Did

#  Data Insertion
I inserted **10 sample records** into each table. Some of the values were intentionally left as `NULL` (like `ZipCode`, `Phone`, `RentAmount`, etc.) to simulate real-world scenarios where some data might be missing.

#  Handling Nulls & Updates
I used `UPDATE` queries to fill in missing values later, like updating the rent, adding missing phone numbers, and setting missing end dates for bookings.

#  Deleting Data
I also included `DELETE` queries to remove any data that didn’t meet the requirements—for example, deleting properties where `AvailableFrom` was `NULL`, or bookings with no end date.


# MySQL Specific Notes
The entire SQL script is written for MySQL. I used `AUTO_INCREMENT` for primary keys and set up foreign key relationships correctly. The code works well in MySQL Workbench, the command-line tool, or even online platforms like DB Fiddle (select MySQL 8.0).


# Files Included
- `Schema.sql`: Contains all the `INSERT`, `UPDATE`, and `DELETE` queries I used
- `README.md`: This file, explaining what the task is about and what I’ve done


# Tools Used
- MySQL Workbench (locally)
