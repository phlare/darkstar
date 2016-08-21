-- Leaping Lizzy 

--  SELECT * FROM mob_droplist WHERE dropId = 2036;
-- add real leaping boots to leaping lizzy and make fairly decent chance to drop
INSERT INTO mob_droplist (dropId, type, itemId, rate) 
SELECT 2036 dropId, 0 type, 13014 itemId, 210 rate
FROM DUAL
WHERE NOT EXISTS (
	SELECT 1 
	FROM mob_droplist
	WHERE dropId = 2036 AND itemId = 13014
	LIMIT 1
);
-- also update bounding boots too be 6x likely to drop
UPDATE mob_droplist
SET rate = 420
WHERE dropId = 2036 AND itemId = 15351;