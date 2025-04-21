-- Find people who matched the witness description and were in the area
SELECT p.name, p.age, p.tattoo, e.event_name
FROM people p
JOIN event_checkins e ON p.id = e.person_id
WHERE p.hair_color = 'red'
AND p.tattoo = 'snake'
AND e.date = '2018-01-15';
