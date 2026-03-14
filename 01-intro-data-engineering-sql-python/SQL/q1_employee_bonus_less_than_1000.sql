{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Q1: Employee Bonus Less Than 1000\
--\
-- Table: Employee\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | empId       | int     |\
-- | name        | varchar |\
-- | supervisor  | int     |\
-- | salary      | int     |\
-- +-------------+---------+\
-- empId is the primary key column for this table.\
-- Each row indicates an employee, their salary, and the id of their manager.\
--\
-- Table: Bonus\
-- +-------------+------+\
-- | Column Name | Type |\
-- +-------------+------+\
-- | empId       | int  |\
-- | bonus       | int  |\
-- +-------------+------+\
-- empId is the primary key column for this table.\
-- empId is a foreign key to Employee.empId.\
-- Each row contains an employee's bonus.\
--\
-- Task:\
-- Write an SQL query to report the name and bonus amount of each employee\
-- with a bonus less than 1000.\
-- Include employees who do not have a bonus record (bonus should appear as NULL).\
--\
-- Output:\
-- +------+-------+\
-- | name | bonus |\
-- +------+-------+\
\
SELECT e.name, b.bonus\
FROM Employee e\
LEFT JOIN Bonus b\
  ON e.empId = b.empId\
WHERE b.bonus < 1000 OR b.bonus IS NULL;\
}