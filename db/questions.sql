-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT name, aged_sixtyfive_plus FROM town_health_records WHERE name <> 'Massachusetts Total' ORDER by aged_sixtyfive_plus DESC LIMIT 3;
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT name, aged_zero_to_nineteen FROM town_health_records WHERE name <> 'Massachusetts Total' ORDER by aged_zero_to_nineteen DESC LIMIT 3;
-- What 5 towns have the lowest per capita income?
SELECT name, per_capita_income FROM town_health_records WHERE name <> 'Massachusetts Total' ORDER by per_capita_income ASC LIMIT 5;
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT name, teen_birth_rate FROM town_health_records WHERE name <> 'Massachusetts Total' AND name <> 'Boston' AND name <> 'Becket' AND name <> 'Beverly' ORDER by teen_birth_rate DESC LIMIT 1;
-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT name, infant_mortality_rate FROM town_health_records WHERE name <> 'Massachusetts Total' AND name <> 'Boston' ORDER by infant_mortality_rate DESC LIMIT 1;