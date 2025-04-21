-- Step 1: Gather initial details about the murder case
-- Find the crime scene report for the murder on January 15, 2018 in SQL City

SELECT *
FROM crime_scene_report
WHERE type = 'murder'
  AND date = '2018-01-15'
  AND city = 'SQL City';

-- Step 2: Find the witness names and their addresses mentioned in the report
-- (Replace '123' with the actual report_id if needed)

SELECT name, address
FROM person
WHERE address IN (
  'Northwestern Dr',
  'Franklin Ave'
);
