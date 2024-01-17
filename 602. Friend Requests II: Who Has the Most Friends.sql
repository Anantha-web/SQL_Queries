SELECT A.id, SUM(A.friends_count) AS num 
FROM (SELECT requester_id AS id, COUNT(requester_id) AS friends_count FROM RequestAccepted 
GROUP BY requester_id 
UNION ALL
SELECT accepter_id AS id, COUNT(accepter_id) AS friends_count FROM RequestAccepted 
GROUP BY accepter_id) A
GROUP BY A.id
ORDER BY num DESC
LIMIT 1
