SELECT user_id , COUNT(user_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id ASC, followers_count ASC;
