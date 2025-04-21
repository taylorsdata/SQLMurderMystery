-- 📝 Step 5: Narrow down further using additional info (e.g., car info, Facebook events)

-- Find the car info of possible suspects
SELECT p.name, d.plate_number, d.car_make, d.car_model
FROM drivers_license d
JOIN person p ON d.id = p.license_id
WHERE p.id IN (67318);  -- final suspect ID from previous filtering

-- Confirm the name of the suspect:
-- Let’s say the result gave us: Jeremy Bowers

-- ✅ Step 6: Submit the final answer to the solution table

INSERT INTO solution (user_id, value)
VALUES (1, 'Jeremy Bowers');  -- Change user_id if needed
