{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- ==========================================\
-- Q7: Actors and Directors Who Cooperated At Least 3 Times\
-- ==========================================\
\
-- Table: ActorDirector\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | actor_id    | int     |\
-- | director_id | int     |\
-- | timestamp   | int     |\
-- +-------------+---------+\
-- timestamp is the primary key.\
\
-- Problem:\
-- Report the pairs (actor_id, director_id) where the actor has cooperated\
-- with the director at least three times.\
-- Return the result in any order.\
\
-- Solution:\
-- Group by actor and director, count how many rows exist for each pair,\
-- and keep only those with count >= 3.\
\
SELECT actor_id, director_id\
FROM ActorDirector\
GROUP BY actor_id, director_id\
HAVING COUNT(*) >= 3;\
}