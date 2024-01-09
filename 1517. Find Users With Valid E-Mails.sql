# Select U.user_id as user_id,U.name as name,U.mail as mail
# From Users U
# Where U.mail Like '[a-zA-Z]%@leetcode.com'
# And U.mail Not Like '%[^a-zA-Z0-9_.-]%@leetcode.com';

# SELECT user_id, name, mail
# FROM Users
# WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com

# SELECT *
# FROM Users
# WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com' AND mail NOT LIKE '%?%';

SELECT *
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com';
