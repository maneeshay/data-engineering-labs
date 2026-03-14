{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Q5: Salespersons With No Orders For Company "RED"\
--\
-- Table: SalesPerson\
-- +-----------------+---------+\
-- | Column Name     | Type    |\
-- +-----------------+---------+\
-- | sales_id        | int     |\
-- | name            | varchar |\
-- | salary          | int     |\
-- | commission_rate | int     |\
-- | hire_date       | date    |\
-- +-----------------+---------+\
-- sales_id is the primary key.\
--\
-- Table: Company\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | com_id      | int     |\
-- | name        | varchar |\
-- | city        | varchar |\
-- +-------------+---------+\
-- com_id is the primary key.\
--\
-- Table: Orders\
-- +-------------+------+\
-- | Column Name | Type |\
-- +-------------+------+\
-- | order_id    | int  |\
-- | order_date  | date |\
-- | com_id      | int  |\
-- | sales_id    | int  |\
-- | amount      | int  |\
-- +-------------+------+\
-- order_id is the primary key.\
-- com_id is a foreign key to Company.com_id.\
-- sales_id is a foreign key to SalesPerson.sales_id.\
--\
-- Task:\
-- Report the names of all salespersons who did NOT have any orders\
-- related to the company with name = "RED".\
--\
-- Output:\
-- +------+\
-- | name |\
-- +------+\
\
SELECT s.name\
FROM SalesPerson s\
WHERE NOT EXISTS (\
  SELECT 1\
  FROM Orders o\
  JOIN Company c\
    ON o.com_id = c.com_id\
  WHERE o.sales_id = s.sales_id\
    AND c.name = 'RED'\
);\
}