
# Airbnb Database Normalization

## Normal Forms Applied

### First Normal Form (1NF)

- **Requirement:** All attributes contain atomic values; no repeating groups or arrays.
- **Compliance:**  
  Each table attribute holds atomic values (e.g., `email`, `first_name`), and no multi-valued fields are used. Each record is unique by a primary key (UUID).

### Second Normal Form (2NF)

- **Requirement:** Meet 1NF and all non-key attributes fully depend on the primary key.
- **Compliance:**  
  - Each table has a single-column primary key (`UUID`), so partial dependency is not possible.
  - All non-key attributes in each table depend fully on the primary key (e.g., in the `Booking` table, `start_date` depends on `booking_id`).

### Third Normal Form (3NF)

- **Requirement:** Meet 2NF and no transitive dependencies (non-key attributes should not depend on other non-key attributes).
- **Compliance:**  
  - Non-key attributes depend only on the primary key.  
  - For example, in the `Property` table, `host_id` is a foreign key but is part of the key relationship, not a derived attribute.
  - No attributes store derived data or information that depends on other non-key attributes.

## Additional Notes

- **Use of Foreign Keys:**  
  Foreign keys enforce referential integrity between related entities, such as `Property.host_id` referencing `User.user_id`.

- **ENUM Types:**  
  Using ENUMs for `role`, `booking status`, and `payment method` limits values and ensures consistency.

- **Indexes:**  
  Indexes on frequently queried columns (like `email`, `property_id`, `booking_id`) improve performance but do not affect normalization.

## Summary

The Airbnb database schema follows **3NF**, ensuring minimal redundancy and consistency while supporting the required business rules and relationships.
