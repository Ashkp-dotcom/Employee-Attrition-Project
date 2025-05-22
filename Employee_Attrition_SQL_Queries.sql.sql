create database Attrition
SELECT top 5 * from Employee_Attrition 

--1 Total Employees & Attrition
SELECT 
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS int)) AS total_attrition 
FROM Employee_Attrition

--2 Attrition rate by Department

SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS INT)) AS attrition_count,
    ROUND(100.0 * SUM(CAST(Attrition AS FLOAT)) / COUNT(*), 2) AS attrition_rate
FROM Employee_Attrition
GROUP BY Department
ORDER BY attrition_rate DESC;

--3 Attrition Rate by Job Role

SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS INT)) AS attrition_count,
    ROUND(100.0 * SUM(CAST(Attrition AS FLOAT)) / COUNT(*), 2) AS attrition_rate
FROM Employee_Attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;


--4 Attrition Rate by Gender

SELECT 
    Gender,
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS INT)) AS attrition_count,
    ROUND(100.0 * SUM(CAST(Attrition AS FLOAT)) / COUNT(*), 2) AS attrition_rate
FROM Employee_Attrition
GROUP BY Gender
ORDER BY attrition_rate DESC;

--5  Attrition by Education Field

SELECT 
    EducationField,
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS INT)) AS attrition_count,
    ROUND(100.0 * SUM(CAST(Attrition AS FLOAT)) / COUNT(*), 2) AS attrition_rate
FROM Employee_Attrition
GROUP BY EducationField
ORDER BY attrition_rate DESC;

--6 Attrition by Business Travel Frequency

SELECT 
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CAST(Attrition AS INT)) AS attrition_count,
    ROUND(100.0 * SUM(CAST(Attrition AS FLOAT)) / COUNT(*), 2) AS attrition_rate
FROM Employee_Attrition
GROUP BY BusinessTravel
ORDER BY attrition_rate DESC;




