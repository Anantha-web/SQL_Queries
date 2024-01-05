SELECT Activity.machine_id, round(avg(e.timestamp-Activity.timestamp), 3) as processing_time
FROM Activity
INNER JOIN Activity e
ON Activity.machine_id = e.machine_id 
AND Activity.process_id = e.process_id
AND Activity.activity_type = 'start' 
AND e.activity_type = 'end'
GROUP BY Activity.machine_id;
