# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_19_234425) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country_id"
    t.string "slug"
    t.string "image_url"
    t.integer "avg_temp_jan"
    t.integer "avg_temp_feb"
    t.integer "avg_temp_mar"
    t.integer "avg_temp_apr"
    t.integer "avg_temp_may"
    t.integer "avg_temp_jun"
    t.integer "avg_temp_jul"
    t.integer "avg_temp_aug"
    t.integer "avg_temp_sep"
    t.integer "avg_temp_oct"
    t.integer "avg_temp_nov"
    t.integer "avg_temp_dec"
    t.index ["slug"], name: "index_cities_on_slug", unique: true
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "image_url"
    t.index ["slug"], name: "index_continents_on_slug", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "continent_id"
    t.string "slug"
    t.string "image_url"
    t.index ["slug"], name: "index_countries_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

end
