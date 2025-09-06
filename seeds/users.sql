SET cte_max_recursion_depth = 100000;

INSERT INTO users (name, email, created_at)
WITH RECURSIVE numbers AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 FROM numbers WHERE n < 100000
)
SELECT 
  SUBSTRING(MD5(RAND()), 1, 8) AS name,
  CONCAT(SUBSTRING(MD5(RAND()), 15, 20), n, '@example.com') AS email,
  NOW() - INTERVAL FLOOR(RAND() * 365) DAY AS created_at
FROM numbers;
