# Pewlett-Hackard-Analysis
## Overview of the analysis
The purpose of this analysis is to get the table for Retiring Employees by Title, Number of Retiring Employees by Title and Employees Eligible for the Mentorship Program 

## Results:
- retirement_titles 

  The retiring employees with titles data is obtained by using SQL queries. The data is pulled from employees and joined with titles table. 
  Output as below:
  
  ![](/Output/retirement_titles.PNG)
  
- unique_titles

  Another query is used to retrieve the retiring employees by their most recent job title to avoid dulicated.
  Output as below:
  
  ![](/Output/unique_title.PNG)
  
- retiring_titles
 
  Summarizing the number of retiring employees by titles. 29,414 Senior Engineers, 28,254 Senior Staffs, 14,222 Engineers, 12243 Staffs, 4,502 Technique Leaders, 1,761 Assistant Engineers and 2 Managers will be retiring soon. 
  Output as below:
  
   ![](/Output/retiring_titles.PNG)

- mentorship_eligibilty
  
  Query is used to obtain a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program. 
   Output as below:
  
   ![](/Output/mentorship_eligibilty.PNG)

## Summary: 

- Based on the result, 29,414 Senior Engineers, 28,254 Senior Staffs, 14,222 Engineers, 12243 Staffs, 4,502 Technique Leaders, 1,761 Assistant Engineers and 2 Managers will need to be filled due to the amount of retiring employees. These employees are retiring from the below departments:
    
    ![](/Output/Retire_by_department.PNG)
    
- Based on the output from SQL, the eligible mentors for each department are 435 in Development, 356 in Production, 272 in Sales, 128 in Customer Service, 126 in Marketing, 113	in Research, 107 in Human Resources, 97 in Quality Management, and 74 in Finance. Mentor amount is way below the new hire amount assuming all the retired position will be filled with new hire. Therefore, more mentors are needed to better train new hires.
    
    ![](/Output/Mentor_by_department.PNG)

