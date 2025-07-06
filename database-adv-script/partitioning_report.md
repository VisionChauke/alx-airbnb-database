# Partitioning Performance Report – Booking Table

## Objective

Optimize queries on the `Booking` table by implementing range partitioning on the `start_date` column.

## Method

- Original `Booking` table was renamed and restructured using `PARTITION BY RANGE`.
- Partitioned into yearly chunks: 2023, 2024, 2025.
- Created indexes on `user_id` within each partition.
- Queried bookings for a specific date range using `EXPLAIN ANALYZE`.

## Results

| Test Query                                 | Before Partitioning | After Partitioning |
|-------------------------------------------|----------------------|---------------------|
| `SELECT * FROM Booking WHERE start_date BETWEEN '2024-03-01' AND '2024-05-31'` | Full table scan       | Partition pruning – scanned only `Booking_2024` |

- **Query execution time dropped significantly.**
- **I/O reduced** by avoiding unnecessary partitions.
- **Improved scalability** for future years.

## Conclusion

Partitioning large tables by date greatly improves time-based query performance, reduces I/O, and optimizes memory usage during scans.
