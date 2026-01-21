-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT p.first_name, p.last_name, t.name AS team_name, s.home_runs
FROM players AS p
JOIN stats AS s ON p.id = s.player_id
JOIN teams AS t ON s.team_id = t.id
WHERE t.year = 2019
ORDER BY s.home_runs DESC
LIMIT 1;
