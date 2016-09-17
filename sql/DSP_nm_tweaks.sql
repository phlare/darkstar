-- to get dropId:
--  mysql> select * from mob_spawn_points WHERE mobname = 'Jaggedy-Eared_Jack';
--+----------+--------------------+--------------------+---------+----------+---------+----------+---------+
--| mobid    | mobname            | polutils_name      | groupid | pos_x    | pos_y   | pos_z    | pos_rot |
--+----------+--------------------+--------------------+---------+----------+---------+----------+---------+
--| 17187111 | Jaggedy-Eared_Jack | Jaggedy-Eared Jack |    5561 | -281.000 | -19.000 | -220.000 |     127 |
--+----------+--------------------+--------------------+---------+----------+---------+----------+---------+

-- mysql> select * from mob_groups WHERE groupId = 5561;
--+---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+
--| groupid | poolid | zoneid | respawntime | spawntype | dropid | HP | MP | minLevel | maxLevel | allegiance |
--+---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+
--|    5561 |   2125 |    100 |        3300 |       128 |   1826 |  0 |  0 |        9 |       10 |          0 |
--+---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+

-- mysql> select * from mob_droplist WHERE dropId = 1826;
-- +--------+------+--------+------+
-- | dropId | type | itemId | rate |
-- +--------+------+--------+------+
-- |   3678 |    0 |    846 | 1000 |
-- |   3678 |    0 |  15224 |  160 |
-- +--------+------+--------+------+


-- Leaping Lizzy 

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
-- also update bounding boots too be more likely to drop
UPDATE mob_droplist
SET rate = 420
WHERE dropId = 2036 AND itemId = 15351;


-- Valkurm Emperor

-- add real emperor hairpin back to VE and maike fairly decent droprate
INSERT INTO mob_droplist (dropId, type, itemId, rate)
SELECT 3678 dropId, 0 type, 12486 itemId, 320 rate
FROM DUAL
WHERE NOT EXISTS (
	SELECT 1
	FROM mob_droplist
	WHERE dropId = 3678 AND itemId = 12486
	LIMIT 1
);
-- also update empress hairpin to be much more likely to drop
UPDATE mob_droplist
SET rate = 450 WHERE dropId = 3678 AND itemId = 15224;

-- Jaggedy-Eared_Jack

-- update rabbit charm drop to be much more likely
UPDATE mob_droplist
SET rate = 350 WHERE dropId = 1826 AND itemId = 13112;


-- Spiny Spipi

-- update mist silk cape drop rate to be 50/50
UPDATE mob_droplist
SET rate = 500 WHERE dropId = 3310 AND itemId = 13607;


-- aArgus

-- add real peacock charm back to Argus and make ok droprate
INSERT INTO mob_droplist (dropId, type, itemId, rate)
SELECT 174 dropId, 0 type, 13056 itemId, 320 rate
FROM DUAL
WHERE NOT EXISTS (
	SELECT 1
	FROM mob_droplist
	WHERE dropId = 174 AND itemId = 13056
	LIMIT 1
);
-- also update empress hairpin to be much more likely to drop
UPDATE mob_droplist
SET rate = 320 WHERE dropId = 174 AND itemId = 15515;