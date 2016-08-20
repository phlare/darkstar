-- Leaping Lizzy 

--  SELECT * FROM mob_droplist WHERE dropId = 2036;
-- add real leaping boots to leaping lizzy
INSERT INTO mob_droplist (dropId, type, itemId, rate) 
SELECT 2036 dropId, 0 type, 13014 itemId, 140 rate
FROM DUAL
WHERE NOT EXISTS (
	SELECT 1 
	FROM mob_droplist
	WHERE dropId = 2036 AND itemId = 13014
	LIMIT 1
);
-- also update bounding boots too be 3x likely to drop
UPDATE mob_droplist
SET rate = 210
WHERE dropId = 2036 AND itemId = 15351;