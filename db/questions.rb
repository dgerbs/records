# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select('name', 'aged_sixtyfive_plus').where('').order('name DESC').limit(3)
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select('name', 'aged_zero_to_nineteen').where.('').order('name DESC').limit(3)
# What 5 towns have the lowest per capita income?
TownHealthRecord.select('name', 'per_capita_income').where('').order('name DESC').limit(5)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select('name', 'teen_birth_rate').where.not('').order
# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select('name', 'infant_mortality_rate').where.not('').order