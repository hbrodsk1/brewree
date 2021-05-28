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

ActiveRecord::Schema.define(version: 2021_05_13_155216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: :cascade do |t|
    t.string "name", null: false
    t.string "brewery_type"
    t.string "street"
    t.string "address_2"
    t.string "address_3"
    t.string "city"
    t.string "state"
    t.string "county_province"
    t.string "postal_code"
    t.string "country"
    t.string "longitude"
    t.string "latitude"
    t.string "phone"
    t.string "website_url"
    t.string "obdb_id"
    t.integer "click_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "brewery_id"
    t.boolean "would_recommend"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brewery_id"], name: "index_reviews_on_brewery_id"
  end

end
