class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :name
      t.integer :population
      t.integer :aged_zero_to_nineteen
      t.integer :aged_sixtyfive_plus
      t.integer :per_capita_income
      t.integer :persons_below_poverty
      t.float :persons_below_poverty_rate
      t.float :adequate_prenatal_care_rate
      t.float :c_section_delivery_rate
      t.integer :infant_deaths
      t.float :infant_mortality_rate
      t.float :low_birthweight_rate
      t.float :multiple_birth_rate
      t.float :publicly_financed_prenatal_care_rate
      t.float :teen_birth_rate

      t.timestamps
    end
  end
end
