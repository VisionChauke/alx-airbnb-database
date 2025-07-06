# SQL Joins Practice – Airbnb Clone Database

## 📘 Project Overview

This project is focused on mastering SQL JOINs using a simplified version of an Airbnb-style database schema. It includes practical examples of `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN` to demonstrate how to query related data across multiple tables.

---

## 🛠️ Technologies Used

- SQL (PostgreSQL syntax, compatible with most RDBMS)
- Sample database with entities: `User`, `Booking`, `Property`, `Review`, `Payment`

---

## 🧩 Database Schema Overview

- **User:** Stores user information (host or guest)
- **Property:** Listings created by users
- **Booking:** Reservations made by users
- **Review:** Feedback on properties
- **Payment:** Payments made for bookings

---

## 📄 SQL Join Queries

### 1. 🔗 INNER JOIN – Bookings with respective users

```sql
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id;
2. 🡸 LEFT JOIN – All properties and their reviews (if any)
sql
Copy
Edit
SELECT 
    p.property_id,
    p.title,
    p.city,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id;
3. 🔄 FULL OUTER JOIN – All users and all bookings (even unmatched)
sql
Copy
Edit
SELECT 
    u.user_id,
    u.name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM 
    User u
FULL OUTER JOIN 
    Booking b ON u.user_id = b.user_id;
⚠️ Note: If your database doesn't support FULL OUTER JOIN (e.g., MySQL), you can simulate it using UNION.

✅ Learning Outcomes
Understand different types of SQL joins

Practice querying relationships between users, bookings, and properties

Gain insights into how JOINs handle missing or unmatched data

📂 File Structure
pgsql
Copy
Edit
sql-joins-project/
│
├── queries/
│   ├── inner-join.sql
│   ├── left-join.sql
│   └── full-outer-join.sql
│
├── README.md
└── schema_diagram.png
✍️ Author
Vision Chauke
Web Development Tutor & Back-End Developer in Training
