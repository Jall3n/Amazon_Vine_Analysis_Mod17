-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

Select*
From vine_table;

-- 2.1 Create new table to retrieve all the rows where total votes count is equal to or greater than 20
-- to pick reviews that are more likely to be helpful and to avoid having division by zero errors later on
SELECT review_id,
    star_rating,
    helpful_votes,
    total_votes,
    vine,
    verified_purchase
INTO total_votes_greater
FROM vine_table
WHERE total_votes >= 20
ORDER BY review_id;

-- 2.2 Create a new table to retrieve all the rows where the number of helpful votes divided by total votes is equal to or greater than 50%
-- SQL you need to cast your columns as floats using WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
SELECT 


-- 2.3 Step 2 table, create a new table that retrieves all the rows where a review was written as part of Vine program (paid), vine == 'Y'


-- 2.4 Repeat step 3, but for Vine program (unpaid), vine == 'N'


-- 2.5 Determine the total number of reviews, the number of 5-star reviews, and the percentage of 5-star reviews for the two types of review (paid vs unpaid)