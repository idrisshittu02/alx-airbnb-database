# Index Optimization Report

## 🔍 Objective

To improve query performance in the Airbnb database by identifying frequently queried columns and creating indexes on them.

---

## 🧠 Indexed Columns and Why

| Table      | Column      | Reason                           |
| ---------- | ----------- | -------------------------------- |
| Users      | email       | Frequently filtered/queried      |
| Bookings   | user_id     | Used in JOIN and filtering       |
| Bookings   | property_id | Used in JOIN and filtering       |
| Properties | location    | Filter condition in many queries |

---

## ⚙️ SQL Index Commands

```sql
CREATE INDEX idx_users_email ON Users(email);
CREATE INDEX idx_bookings_user_id ON Bookings(user_id);
CREATE INDEX idx_bookings_property_id ON Bookings(property_id);
CREATE INDEX idx_properties_location ON Properties(location);
```
