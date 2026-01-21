-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT
SUM(hits) AS lifetime_hits
FROM stats AS s
JOIN players AS p ON p.id = s.player_id
WHERE p.first_name = 'Barry'
AND p.last_name = 'Bonds';
