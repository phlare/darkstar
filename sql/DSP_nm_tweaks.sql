-- to get dropId:
--  mysql> select * from mob_spawn_points WHERE mobname = 'Valkurm_Emperor';
-- +----------+-----------------+-----------------+---------+----------+--------+---------+---------+
-- | mobid    | mobname         | polutils_name   | groupid | pos_x    | pos_y  | pos_z   | pos_rot |
-- +----------+-----------------+-----------------+---------+----------+--------+---------+---------+
-- | 17199438 | Valkurm_Emperor | Valkurm Emperor |    5742 | -211.000 | -0.010 | -34.000 |      39 |
-- +----------+-----------------+-----------------+---------+----------+--------+---------+---------+

-- mysql> select * from mob_groups WHERE groupId = 5742;
-- +---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+
-- | groupid | poolid | zoneid | respawntime | spawntype | dropid | HP | MP | minLevel | maxLevel | allegiance |
-- +---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+
-- |    5742 |   4124 |    103 |        7200 |       128 |   3678 |  0 |  0 |       29 |       30 |          0 |
-- +---------+--------+--------+-------------+-----------+--------+----+----+----------+----------+------------+

-- mysql> select * from mob_droplist WHERE dropId = 3678;
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
SET rate = 640
WHERE dropId = 3678 AND itemId = 15224;

