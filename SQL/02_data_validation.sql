-- =====================================================
-- INTERNATIONAL STUDENT MOBILITY ANALYSIS
-- DATA VALIDATION
-- =====================================================

USE international_student_mobility;

-- 1. Check total number of records
SELECT COUNT(*) AS Total_Rows
FROM student_mobility;

-- 2. Preview the data
SELECT *
FROM student_mobility
LIMIT 10;

-- 3. Check available countries
SELECT DISTINCT Country
FROM student_mobility
ORDER BY Country;

-- 4. Check available years
SELECT DISTINCT Year
FROM student_mobility
ORDER BY Year;

-- 5. Check for missing values
SELECT
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Missing_Country,
    SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Missing_Year,
    SUM(CASE WHEN Mobile_Students IS NULL THEN 1 ELSE 0 END) AS Missing_Students
FROM student_mobility;