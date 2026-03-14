{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Q3: Classes With At Least Five Students\
--\
-- Table: Courses\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | student     | varchar |\
-- | class       | varchar |\
-- +-------------+---------+\
-- (student, class) is the primary key.\
-- Each row indicates that a student is enrolled in a class.\
--\
-- Task:\
-- Report all classes that have at least five students.\
--\
-- Output:\
-- +---------+\
-- | class   |\
-- +---------+\
\
SELECT class\
FROM Courses\
GROUP BY class\
HAVING COUNT(*) >= 5;\
}