# Database Performance Monitoring and Refinement Report

## Tools Used

- `EXPLAIN ANALYZE` (PostgreSQL)
- SQL query analysis
- Index and schema review

---

## Monitored Queries

1. **Total bookings per user**
   - Used COUNT and GROUP BY
   - Execution time improved after ensuring index on Booking.user_id

2. **Join query with Booking, User, Property, and Payment**
   - Detected sequential scan on `Payment.booking_id`
   - Added index `idx_payment_booking_id` to optimize join

---

## Changes Made

- Verified existing indexes on `user_id` and `property_id`
- **Added index on `Payment.booking_id`**

---

## Results

| Query                          | Before Optimization | After Optimization |
|-------------------------------|----------------------|---------------------|
| Bookings per user             | ~ Full scan on Booking | Used index (faster) |
| Join with Payment table       | Seq scan on Payment  | Index used on booking_id  |

---

## Conclusion

- Indexing key foreign keys and join columns significantly improves query performance.
- Periodic use of `EXPLAIN ANALYZE` is crucial for detecting slow queries.
- Schema refinement and indexing should be driven by real query patterns and usage stats.
