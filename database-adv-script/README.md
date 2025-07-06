# SQL JOIN Queries – Airbnb Clone Project

This file documents advanced SQL queries using JOINs to extract meaningful data across related tables.

## 🔁 INNER JOIN – Bookings with Users

Retrieves all bookings alongside the users who made them. Excludes any bookings not linked to a user.

## 🡸 LEFT JOIN – Properties and Reviews

Returns all properties and their associated reviews. If a property has no reviews, it is still included with `NULL` review data.

## 🔄 FULL OUTER JOIN – All Users and Bookings

Returns all users and all bookings, whether or not they are linked to each other. Useful for spotting unmatched entries.

# SQL Subqueries – Airbnb Clone Project

This file contains examples of SQL subqueries used in the Airbnb project.

## 🔍 Non-Correlated Subquery

-   **Purpose:** Find properties with an average rating above 4.0
-   **How it works:** Uses a subquery with `GROUP BY` and `HAVING` to filter properties based on review ratings

## 🔁 Correlated Subquery

-   **Purpose:** Find users who made more than 3 bookings
-   **How it works:** Uses a subquery that references the outer query (`b.user_id = u.user_id`) to count bookings per user

# SQL Aggregations and Window Functions – Airbnb Clone Project

This file contains SQL queries using aggregation functions and window functions to analyze Airbnb data.

## 📊 Total Bookings per User

-   **Query:** Counts how many bookings each user has made.
-   **Techniques:** `COUNT()`, `GROUP BY`, `JOIN`

## 🏆 Property Ranking by Bookings

-   **Query:** Ranks properties based on how many bookings they received.
-   **Techniques:** `COUNT()`, `RANK() OVER (ORDER BY ...)`, `GROUP BY`
