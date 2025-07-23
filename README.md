# KIMS Hospital SQL Practice Project

This project is built using SQL to simulate real-world hospital operations. It includes table creation, foreign key relationships, data insertion, and various types of joins for data analysis.

## 📁 Tables

- **kimshospitalsmainbranch**: Stores KIMS hospital branch details
- **kimssunshine**: Stores linked sunshine hospital branches

## ✅ SQL Concepts Used

- `CREATE TABLE`, `INSERT INTO`
- `PRIMARY KEY`, `FOREIGN KEY`
- `SELECT`, `DROP`
- `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`, `CROSS JOIN`

## 🔍 Sample Joins Output

```sql
SELECT k.kimsid, k.branchname AS hospital_branch, s.branchname AS sunshine_branch
FROM kimshospitalsmainbranch k
LEFT JOIN kimssunshine s ON k.kimsid = s.kimsid;

