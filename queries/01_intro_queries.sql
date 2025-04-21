-- 📝 Step 1: Retrieve the murder crime report from January 15, 2018 in SQL City

SELECT *
FROM crime_scene_report
WHERE type = 'murder'
  AND date = '2018-01-15'
  AND city = 'SQL City';

-- 📝 Step 2: Extract info from the report (time & witness addresses)
-- Based on report text, we learn there were 2 witnesses:
-- One lives at 4919 Franklin Ave, the other at 103 Northwestern Dr.

-- Get witness details based on address

SELECT id, name, address
FROM person
WHERE address IN ('4919 Franklin Ave', '103 Northwestern Dr');
