# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_21_161513) do

  create_table "addons", force: :cascade do |t|
    t.integer "location_id"
    t.string "name"
    t.integer "price"
    t.index ["location_id"], name: "index_addons_on_location_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "photo_url"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "tour_id"
    t.integer "guide_id"
    t.string "name"
    t.string "description"
    t.index ["guide_id"], name: "index_locations_on_guide_id"
    t.index ["tour_id"], name: "index_locations_on_tour_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "tours_id"
    t.string "username"
    t.string "review"
    t.integer "rating"
    t.index ["tours_id"], name: "index_reviews_on_tours_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "days"
    t.integer "price"
    t.string "photo_url"
    t.string "tags"
  end

end
