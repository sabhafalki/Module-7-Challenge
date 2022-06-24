# Module-7-Challenge  Pewlett-Hackard-Analysis
# Overview of Project #
The purpose of this Project is to analyze the Employee DB so that we can help Pewlett Hackard company for the upcoming "Silver Tsunami". The goal is to anaylze the trend for the mass chunk of employees that are retiring soon. Pewlett Hackard wants detailed information on the number of future retirees from all departments currently working at the company, so that they can plan to hire new staff and prepare a mentorship initiative. The criterion was based on the birth dates ranging from 1952 to 1955 and hired dates from 1985 to 1988.

The analysis consisted of the following:
1. Identify the retiring employees by their title.
2. Determine the sum of retiring employees grouped by title.
3. Identify the employees eligible for participation in the mentorship program.
4. Determine the number of roles-to-fill grouped by title and department.
5. Determine the number of qualified, retirement-ready employees to mentor. the next generation grouped by title and department.

# Resources #
Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv <br>
Software: SQL, PostgreSQL, pgAdmin

# Results #
## The ER Data Diagram ##
The following depicts the DB Schema. <br>
![DBD](/Pewlett-Hackard-Analysis/Image/EmployeeDB.png)

##  The Number of Retiring Employees by Title ##
The following tables mentions the retiring employees by title, on the basis of their birth dates (i.e. born between 1952 and 1955). <br>
![retirement_titles](/Pewlett-Hackard-Analysis/Image/retirement_titles.png) <br>

The following table is filtering the above for unique values only. <br>
![unique_titles](/Pewlett-Hackard-Analysis/Image/unique_titles.png) <br>

The following table counts the number of employees based on their titles. <br>
![retiring_titles](/Pewlett-Hackard-Analysis/Image/retiring_titles.png)
<br><br>

## The Employees Eligible for the Mentorship Program ##
The following table depicts the Employees' who are eligible for the mentorship program. <br>
![mentorship_eligibility](/Pewlett-Hackard-Analysis/Image/mentorship_eligibility.png)
<br><br>

# Conclusion #
## Summary ##
From our analysis, we were able to conclude that the following:
1. After analyzing the number of retiring employees by their titles, we were able to conclude that more than 60% of their employees are getting ready for retirement. The count of employees expected to retire is 90,398.
2. We were also able to conclude that the senior staff also had senior designations, which made sense.
3. We also realized that the highest number of Employees leaving were Senior Engineers and the Senior Staff. 
4. There appears to be a high numebr of employees retiring, hence the organization needs to backfill. 

## Further Analysis ##
The following table provides a summary of the number of employees eligible for the mentorship program based on their designation. 
It is evident from the table below, that the Senior Staff and Egineers were amonghst the hightest to be eligible for the mentroship program. <br>
![unique_titles](/Pewlett-Hackard-Analysis/Image/mentorship_emp.png) <br>

The following table provides a summary of the number of employees eligible for the mentorship program based on their department. 
Based on the table below, we can conclude that the Development and Production Department had the hightest retirement rates. <br>
![unique_titles](/Pewlett-Hackard-Analysis/Image/retirement_departments.png) <br>
