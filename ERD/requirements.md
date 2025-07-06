# Entity-Relationship Diagram for Airbnb Clone Database

This document describes the entities and relationships used in the Airbnb clone database.

## 🔧 Entities & Attributes

### 1. Users

-   user_id (PK)
-   name
-   email
-   password_hash
-   role

### 2. Properties

-   property_id (PK)
-   user_id (FK to Users)
-   title
-   description
-   location
-   price_per_night

### 3. Bookings

-   booking_id (PK)
-   user_id (FK to Users)
-   property_id (FK to Properties)
-   start_date
-   end_date
-   total_price

### 4. Payments

-   payment_id (PK)
-   booking_id (FK to Bookings)
-   user_id (FK to Users)
-   amount
-   payment_date
-   status

### 5. Reviews

-   review_id (PK)
-   user_id (FK to Users)
-   property_id (FK to Properties)
-   rating
-   comment

## 🔗 Relationships

-   One **User** can:

    -   own many **Properties**
    -   make many **Bookings**
    -   leave many **Reviews**
    -   make many **Payments**

-   One **Property**:

    -   belongs to one **User**
    -   can have many **Bookings**
    -   can have many **Reviews**

-   One **Booking**:

    -   belongs to one **User**
    -   is linked to one **Property**
    -   has one **Payment**

-   One **Payment**:

    -   belongs to one **Booking**
    -   belongs to one **User**

-   One **Review**:
    -   belongs to one **User**
    -   is linked to one **Property**

## 📊 ER Diagram

![ER Diagram](erd.png)
