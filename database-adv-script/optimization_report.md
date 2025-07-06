# Query Optimization Report

## 🎯 Objective

Retrieve all booking records along with related user, property, and payment details in the most efficient way.

---

## ⚙️ Initial Query

```sql
SELECT b.*, u.*, p.*, pay.*
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
JOIN Payments pay ON b.booking_id = pay.booking_id;
```
