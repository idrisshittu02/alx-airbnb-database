# Partitioning Performance Report

## 🎯 Objective

Improve query performance on the Bookings table by implementing range partitioning based on the `start_date`.

---

## 🛠️ Implementation

-   Used PostgreSQL range partitioning by year.
-   Created three partitions: 2023, 2024, and 2025.
-   Indexed `start_date` column in each partition.

---

## 📈 Performance Analysis

### 🔍 Before Partitioning

```sql
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-04-01';
-- Seq Scan on full Bookings table
-- Query Time: ~230ms

EXPLAIN ANALYZE SELECT * FROM Bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-04-01';
-- Only 'bookings_2024' is scanned
-- Query Time: ~60ms
```
