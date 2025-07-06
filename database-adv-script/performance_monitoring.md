# Performance Monitoring Report

## 🎯 Objective

Continuously monitor and refine database performance by analyzing slow queries and applying improvements.

---

## 🔍 Monitored Queries

### 1. Bookings by User

```sql
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE user_id = 101;
```

CREATE INDEX idx_bookings_user_id ON Bookings(user_id);

EXPLAIN ANALYZE
SELECT p.property_id, p.title, r.review_text
FROM Properties p
LEFT JOIN Reviews r ON p.property_id = r.property_id;
