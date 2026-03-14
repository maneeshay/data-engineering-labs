{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- ==========================================\
-- Q6: Movies with Odd ID and Non-Boring Description\
-- ==========================================\
\
-- Table: Cinema\
-- id (int, primary key)\
-- movie (varchar)\
-- description (varchar)\
-- rating (float)\
\
-- Problem:\
-- Report movies with:\
-- 1) Odd-numbered ID\
-- 2) Description not equal to 'boring'\
-- Return results ordered by rating in descending order.\
\
-- Solution:\
\
SELECT id, movie, description, rating\
FROM Cinema\
WHERE id % 2 = 1\
  AND description <> 'boring'\
ORDER BY rating DESC;\
}