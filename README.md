# sql-challenge
Module 9 Challenge: Research about people whom the company employed during the 1980s and 1990s.
# Code Source
PostgreSQL (queries.sql and schema.sql).
## Data Modeling
Reviewed the CSV files and created an Entity Relationship Diagram of the tables (QuickDBD).
![alt text](<EmployeeSQL/ERD/QuickDBD-Module 9 Challenge.png>)
## Data Engineering Saved in EmployeeSQL (schema.sql)
Created a table schema for each of the six CSV files. Output files are in the EmployeeSQL/ERD folder.  
- Specified data types, primary keys, foreign keys, and other constraints.  

Imported each CSV file into its corresponding SQL table.
## Data Analysis Saved in EmployeeSQL (queries.sql)
1. Listed the employee number, last name, first name, sex, and salary of each employee.  

2. Listed employees who were hired in 1986.  

3. Listed the manager of each department along with their department number, department name, employee number, last name, and first name.  

4. Listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.  

5. Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.  

6. Listed each employee in the Sales department, including their employee number, last name, and first name.  

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.  

8. Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
# References:
Data generated by Mockaroo, LLCLinks to an external site., (2022). Realistic Data Generator.  

Used google for problems with uploading csv files to postgresSQL, accessed February 2025.
