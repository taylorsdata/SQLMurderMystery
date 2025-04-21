-- 🔍 Step 6: From previous filtering, we found a suspect named Jeremy Bowers.
-- Let’s gather all his info to confirm.

SELECT p.name, p.id AS person_id, dl.plate_number, dl.car_make, dl.car_model
FROM person p
JOIN drivers_license dl ON p.license_id = dl.id
WHERE p.name = 'Jeremy Bowers';
-- ✅ This confirms Jeremy’s license and vehicle info.

-- 🔎 Step 7: Let’s look at his gym check-in, which the witness mentioned.
-- Witness said the killer was at the gym on Jan 9 and is a gold member.

SELECT g.membership_id, m.person_id, p.name, g.check_in_date, m.membership_status
FROM get_fit_now_check_in g
JOIN get_fit_now_member m ON g.membership_id = m.id
JOIN person p ON m.person_id = p.id
WHERE p.name = 'Jeremy Bowers'
  AND g.check_in_date = '2018-01-09'
  AND m.membership_status = 'gold';
-- ✅ Jeremy Bowers checked in at the gym on the exact day the witness said.
-- ✅ He is also a gold member—this matches the witness testimony.

-- 🧠 Final Conclusion:
-- The car description matches, the gym check-in matches, the membership matches.
-- All signs point to Jeremy Bowers being the killer.

-- 🚨 Step 3: Submit Jeremy Bowers as the final answer

INSERT INTO solution (user_id, value)
VALUES (1, 'Jeremy Bowers');
