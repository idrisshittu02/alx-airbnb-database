# SQL JOIN Queries – Airbnb Clone Project

This file documents advanced SQL queries using JOINs to extract meaningful data across related tables.

## 🔁 INNER JOIN – Bookings with Users

Retrieves all bookings alongside the users who made them. Excludes any bookings not linked to a user.

## 🡸 LEFT JOIN – Properties and Reviews

Returns all properties and their associated reviews. If a property has no reviews, it is still included with `NULL` review data.

## 🔄 FULL OUTER JOIN – All Users and Bookings

Returns all users and all bookings, whether or not they are linked to each other. Useful for spotting unmatched entries.
