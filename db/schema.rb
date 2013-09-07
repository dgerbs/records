# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130907215828) do

  create_table "town_health_records", force: true do |t|
    t.string   "name"
    t.integer  "population"
    t.integer  "aged_zero_to_nineteen"
    t.integer  "aged_sixtyfive_plus"
    t.integer  "per_capita_income"
    t.integer  "persons_below_poverty"
    t.float    "persons_below_poverty_rate"
    t.float    "adequate_prenatal_care_rate"
    t.float    "c_section_delivery_rate"
    t.integer  "infant_deaths"
    t.float    "infant_mortality_rate"
    t.float    "low_birthweight_rate"
    t.float    "multiple_birth_rate"
    t.float    "publicly_financed_prenatal_care_rate"
    t.float    "teen_birth_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
