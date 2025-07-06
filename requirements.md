# 🧩 Entities and Attributes

User

user_id (PK)

name

email

password

role (host/guest)

phone_number

Property

property_id (PK)

host_id (FK to User)

title

description

address

city

price_per_night

Booking

booking_id (PK)

user_id (FK to User)

property_id (FK to Property)

start_date

end_date

total_price

Review

review_id (PK)

user_id (FK to User)

property_id (FK to Property)

rating

comment

created_at

Payment

payment_id (PK)

booking_id (FK to Booking)

amount

payment_method

status

created_at

🔗 Relationships
A User can list many Properties (1:N)

A User can make many Bookings (1:N)

A Property can have many Bookings (1:N)

A Booking can have one Payment (1:1)

A User can write many Reviews (1:N)

A Property can have many Reviews (1:N).
