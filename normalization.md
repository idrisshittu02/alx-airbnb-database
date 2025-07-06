# Database Normalization – Airbnb Clone Project

## Objective

To ensure the database design is normalized up to **Third Normal Form (3NF)**, eliminating data redundancy and improving data integrity.

---

## 🧩 First Normal Form (1NF)

**Rule:** All table attributes must hold atomic (indivisible) values; no repeating groups.

✅ Applied:

-   All fields in `Users`, `Properties`, `Bookings`, `Payments`, and `Reviews` hold atomic values.
-   No columns store lists or arrays.

---

## 🔗 Second Normal Form (2NF)

**Rule:** Must meet 1NF and all non-key attributes must be fully functionally dependent on the primary key.

✅ Applied:

-   Composite keys avoided.
-   All non-primary attributes in `Bookings`, for example, depend entirely on `booking_id` (e.g., `start_date`, `end_date`).
-   No partial dependencies exist.

---

## 🔐 Third Normal Form (3NF)

**Rule:** Must meet 2NF and have no transitive dependencies (non-key attributes depending on other non-key attributes).

✅ Applied:

-   In the `Users` table, `email` and `role` depend directly on `user_id`.
-   In `Properties`, `location` is kept atomic and not broken into subcomponents like `city`, `state` — but if needed, can be split for even better design.
-   Payment details are stored in a separate `Payments` table and linked by `booking_id`.

---

## 🚫 Example of Denormalized → Normalized

**Before (Redundant):**

In `Bookings` table:

```plaintext
booking_id | user_name | property_title | start_date | end_date
```

---

## ✅ Step-by-Step: Create, Commit & Push

1. **Create the file** in your local repo:

```bash
cd path/to/alx-airbnb-database
nano normalization.md
```
