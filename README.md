# 📡 Telecom Provider Database Management System

This project presents a complete relational database solution for a fictional telecommunications provider using **MySQL**. The system is designed to handle customer information, service plans, usage data (calls, SMS, data), billing, and support requests — aligned with modern business analytics needs.

## 📂 Project Structure

```bash
├── telecom_provider_create_tables.sql       # Table creation scripts with constraints
├── telecom_provider_insert_data.sql         # Insert statements for realistic sample data
├── telecom_provider_corrected_advanced_queries.sql # SQL queries for business analytics
├── ER Diagram.png                            # Visual entity-relationship diagram
```

## 📌 Objectives

- ✅ Model a real-world telecom provider database
- ✅ Use SQL to design, implement, and populate tables
- ✅ Write complex queries for meaningful business insights
- ✅ Apply relational design concepts: normalization, constraints, FK relations
- ✅ Discuss theoretical aspects such as the **CAP theorem**

## 🧱 Database Design

The database is made up of the following core entities:

| Entity           | Description                                                  |
|------------------|--------------------------------------------------------------|
| `Customers`       | Stores personal details, contact info, and join dates       |
| `ServicePlans`    | Describes plan types, pricing, and limits (data/min/SMS)    |
| `UsageDetails`    | Tracks usage logs for calls, SMS, and data per customer     |
| `Bills`           | Stores billing history and payment statuses                 |
| `SupportRequests` | Tracks customer support interactions and resolution status  |

🔗 Foreign key relationships ensure referential integrity between `Customers` and all dependent entities.

> 📷 See the ER diagram: `ER Diagram.png`

## 🧪 Sample Data

The database is prepopulated with:
- 14 unique customers
- 4 service plans
- Over 20 usage records (calls, SMS, data)
- Billing records per customer (paid, pending, overdue)
- 5 support requests with various resolution statuses

Run the following scripts in order:

```sql
-- Step 1: Create tables
SOURCE telecom_provider_create_tables.sql;

-- Step 2: Insert data
SOURCE telecom_provider_insert_data.sql;
```

## 📊 Advanced SQL Queries

The project includes powerful analytical queries such as:

- 🧾 **Top 5 customers by total billing**
- 📉 **Average usage by service type**
- ⏳ **Customers with overdue bills**
- 🛠️ **Open support requests**
- 📅 **Monthly usage summaries**
- 🔁 **Most-used service plans**

Run queries from:  
`telecom_provider_corrected_advanced_queries.sql`

## 🧠 Theoretical Discussion: CAP Theorem

In a distributed telecom system:

- **Consistency** is vital for real-time balance updates and billing
- **Availability** ensures uninterrupted customer services
- **Partition Tolerance** must be handled in network splits (e.g., cross-region)

💡 In practice, telecom DBs often compromise consistency temporarily to ensure availability (eventual consistency via replication).

## 💻 Technologies Used

- MySQL 8.x
- MySQL Workbench
- SQL (DDL & DML)
- ER Modeling
- Git / GitHub

## ✅ How to Use

1. Clone or download the repo
2. Open `telecom_provider_create_tables.sql` in MySQL Workbench and execute
3. Run `telecom_provider_insert_data.sql` to populate the DB
4. Open `telecom_provider_corrected_advanced_queries.sql` to test business queries
5. View `ER Diagram.png` for schema structure
