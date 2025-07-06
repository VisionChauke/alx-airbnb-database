# Airbnb Database SQL Scripts

Overview
This repository contains two SQL scripts for setting up and populating an Airbnb-style booking system database.

Files

1. airbnb_er_schema.sql
Purpose: Creates the database schema including tables, constraints, enumerated types, and indexes.

Key Features:

Uses UUIDs as primary keys for all tables.

Defines foreign keys to maintain relational integrity.

Enforces data constraints like ENUMs for roles, booking statuses, and payment methods.

Includes indexes on key columns for efficient querying.

1. airbnb_sample_data.sql
Purpose: Inserts sample data into all tables to facilitate testing and development.

Sample Data Includes:

Users with different roles (guest, host, admin).

Properties listed by hosts.

Bookings made by guests.

Payments linked to bookings.

Reviews given by users on properties.

Messages exchanged between users.

How to Use
Create the schema:

Run the airbnb_er_schema.sql script on your PostgreSQL (or compatible) database to create the necessary tables and types.

Insert sample data:

Run the airbnb_sample_data.sql script to populate the tables with example data.

Verify:

Test queries or build your application logic on top of this data model.

Notes
Adjust UUID values or data as needed for your environment.

Ensure your database supports ENUM types or modify the script accordingly.

Author
Back-End Developer in training | Web Development Tutor | Tech for Impact Advocat
