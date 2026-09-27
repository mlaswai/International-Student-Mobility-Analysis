-- =====================================================
-- INTERNATIONAL STUDENT MOBILITY ANALYSIS
-- DATABASE SETUP
-- =====================================================

CREATE DATABASE IF NOT EXISTS international_student_mobility;

USE international_student_mobility;

CREATE TABLE IF NOT EXISTS student_mobility (
    Country VARCHAR(100),
    Year INT,
    Mobile_Students DECIMAL(15,2)
);