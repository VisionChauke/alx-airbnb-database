
# Airbnb Database Entity-Relationship (ER) Diagram

## 📘 Project Title
**Airbnb Database Entity-Relationship (ER) Diagram**

## 🧾 Description
This project provides a detailed Entity-Relationship (ER) diagram for an Airbnb-style booking system. The ER diagram represents the structure of a relational database with clearly defined entities, attributes, and relationships that model the interactions between users, properties, bookings, payments, reviews, and messages.

## 📂 Entities Included
1. **User**
   - Represents guests, hosts, and admins with role-based classification.
2. **Property**
   - Properties listed by hosts including description, price, and location.
3. **Booking**
   - Reservations made by users for properties with status tracking.
4. **Payment**
   - Payment details linked to bookings.
5. **Review**
   - User reviews and ratings on properties.
6. **Message**
   - Communication system between users.

## 🔗 Relationships Overview
- A **User** can list multiple **Properties**.
- A **User** can make multiple **Bookings**.
- A **Property** can be booked many times (**Bookings**).
- Each **Booking** has one corresponding **Payment**.
- A **Property** can receive many **Reviews** from **Users**.
- Users can send and receive **Messages** to/from each other.

## 🖼 Files Included
- `airbnb_er_diagram.drawio` - Editable diagram source file (use with [Draw.io](https://app.diagrams.net/)).
- `airbnb_er_diagram.png` - Rendered image of the ER diagram.

## 🛠 Tools Used
- **Draw.io** (for XML diagram design)
- **Python (matplotlib & networkx)** for image generation

## 📥 How to Use
1. Open the `.drawio` file with [Draw.io](https://app.diagrams.net/) to edit or view the ER structure.
2. Open the `.png` file to view a static image version.
3. Use this diagram to design or implement the corresponding relational database schema.

## 📧 Author
**Vision Chauke**  
*Back-End Developer in training | Web Dev Tutor | Tech for Impact Advocate*
