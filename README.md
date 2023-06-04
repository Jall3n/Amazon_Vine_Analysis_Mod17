# Amazon Vine Analysis
## Purpose

We need to analyze Amazon reviews by members of the paid Amazon Vine program against those who do not pay. There are around 50 datasets to choose from and the one chosen was sports reviews. After choosing the dataset will use PySpark to perform the ETL process and connect it to the AWS RDS instance and load the transformed data into PgAdmin (PostgreSQL). Next, will choose PySpark, Pandas, or SQL to determine if there is any bias toward favordable reviews from Vine memembers in the dataset.  

## Results

After exporting the table information from SQL and loading the csv into a DataFrame the goal was to retrieve all the rows where total_votes count is equal to or greater than 20. We want to pick reviews that are more likely to be helpful and to avoid having division by zero errors later on.

    vine_table = pd.read_csv("../Module17/vine_table.csv")
    vine_table.head()

- How many Vine reviews and non-Vine reviews were there? There are 334 paid vine reviews and 61,614 unpaid vine reviews.

- How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars? There are 139 paid 5-star reviews and 32,665 unpaid 5-star reviews.

- What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars? Around 41.6% of Vine reviews were 5 stars and 53% of non-Vine reviews were 5 stars.


## Summary
