# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach("/Users/douggerber/Dropbox/work/masshealth/db/data.csv", headers: true) do |row|

		health_record = {
			name: row[0], 
	    population: row[1].gsub(/\,/,"").gsub(/\$/,""),
	    aged_zero_to_nineteen: row[2].gsub(/\,/,"").gsub(/\$/,""),
	    aged_sixtyfive_plus: row[3].gsub(/\,/,"").gsub(/\$/,""),
	    per_capita_income: row[4].gsub(/\,/,"").gsub(/\$/,""),
	    persons_below_poverty: row[5].gsub(/\,/,"").gsub(/\$/,""),
	    persons_below_poverty_rate: row[6].gsub(/\,/,"").gsub(/\$/,""),
	    adequate_prenatal_care_rate: row[7].gsub(/\,/,"").gsub(/\$/,""),
	    c_section_delivery_rate: row[8].gsub(/\,/,"").gsub(/\$/,""),
	    infant_deaths: row[9].gsub(/\,/,"").gsub(/\$/,""),
	    infant_mortality_rate: row[10].gsub(/\,/,"").gsub(/\$/,""),
	    low_birthweight_rate: row[11].gsub(/\,/,"").gsub(/\$/,""),
	    multiple_birth_rate: row[12].gsub(/\,/,"").gsub(/\$/,""),
	    publicly_financed_prenatal_care_rate: row[13].gsub(/\,/,"").gsub(/\$/,""),
	    teen_birth_rate: row[14].gsub(/\,/,"").gsub(/\$/,"")
		}

	if TownHealthRecord.where(health_record).empty?
		TownHealthRecord.create(health_record)
	end
end

