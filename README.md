# Amazon Vine Analysis
## Purpose

We need to analyze Amazon reviews by members of the paid Amazon Vine program against those who do not pay. There are around 50 datasets to choose from and the one chosen was sports reviews. After choosing the dataset will use PySpark to perform the ETL process and connect it to the AWS RDS instance and load the transformed data into PgAdmin (PostgreSQL). Next, will choose PySpark (used Google Collab), Pandas, or SQL to determine if there is any bias toward favordable reviews from Vine memembers in the dataset.  

## Results

After exporting the table information from SQL and loading the csv into a DataFrame using Pandas, the goal was to retrieve all the rows where total_votes count is equal to or greater than 20. We want to pick reviews that are more likely to be helpful and to avoid having division by zero errors later on.

    vine_table = pd.read_csv("../Module17/vine_table.csv")
    vine_table.head()

- How many Vine reviews and non-Vine reviews were there? There are 334 paid vine reviews and 61,614 unpaid vine reviews.

- How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars? There are 139 paid 5-star reviews and 32,665 unpaid 5-star reviews.

- What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars? Around 41.6% of Vine reviews were 5 stars and 53% of non-Vine reviews were 5 stars.


## Summary

Initially it doesn't look like there is a bias for paid Vine reviewers.

When comparing the two sets of reviews for the sports category there is a big difference in the nubmer of reviews. For paid Vine members there were only 334 reviews compared to unpaid users with a count over 60,000 reviews. Now when looking at the percentage of 5 star reviews by paid members it is at 41.6% compared to upaid that leave a little over half of their reviews as 5 star. For the sports category it does not seem as popular among the paid members to leave a good review. 

Additionally, I wanted to look at the number of 1 star reviews. For the paid Vine users there was only 8 out of the 334 paid vine reviews (2.4%) and for the unpaid there was 9,192 (15%) out of the 61,614 unpaid vine reviews. So, it looks like reviewers are leaving more positive reivews than negative. 

