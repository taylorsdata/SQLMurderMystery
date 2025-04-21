-- 📝 Step 3: Check interviews of the two witnesses we found earlier

SELECT *
FROM interview
WHERE person_id IN (14887, 16371);  -- IDs from previous query

-- 🕵🏽 Based on interviews:
-- Witness 1 saw the killer at the gym. Killer left in a car from the parking lot.
-- Witness 2 mentioned they were a member of the "Gold" gym and checked in earlier.

-- 📝 Step 4: Find people who checked into the gym on 2018-01-09

SELECT p.name, p.license_id, p.id AS person_id
FROM get_fit_now_check_in g
JOIN get_fit_now_member m ON g.membership_id = m.id
JOIN person p ON m.person_id = p.id
WHERE g.check_in_date = '2018-01-09'
  AND m.membership_status = 'gold';
