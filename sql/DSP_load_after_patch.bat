cd c:\darkstar\sql
del auction_house.sql
del chars.sql
del accounts.sql
del accounts_banned.sql
del char_effects.sql
del char_equip.sql
del char_exp.sql
del char_inventory.sql
del char_jobs.sql
del char_look.sql
del char_pet.sql
del char_pet_name.sql
del char_points.sql
del char_profile.sql
del char_skills.sql
del char_stats.sql
del char_storage.sql
del char_vars.sql
del char_weapon_skill_points.sql
del chars.sql
del conquest_system.sql
del delivery_box.sql
del linkshells.sql
FOR %%X IN (*.sql) DO ECHO Importing %%X & "C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql" dspdb -h localhost -u root -ppurple < %%X