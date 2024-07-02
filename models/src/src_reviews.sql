WITH raw_reviews AS (
    SELECT * FROM {{source('airbnb', 'reviews')}}
)
SELECT 
    LISTING_ID,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment as review_sentiment
FROM
    raw_reviews