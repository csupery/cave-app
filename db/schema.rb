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

ActiveRecord::Schema.define(version: 2021_04_05_092016) do

  create_table "appellations", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "castles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "appellation_id", null: false
    t.index ["appellation_id"], name: "index_castles_on_appellation_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "quantity", default: 0, null: false
    t.integer "vintage_id", null: false
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "castle_id", null: false
    t.index ["castle_id"], name: "index_stocks_on_castle_id"
    t.index ["vintage_id"], name: "index_stocks_on_vintage_id"
  end

  create_table "vintages", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "castles", "appellations"
  add_foreign_key "stocks", "castles"
  add_foreign_key "stocks", "vintages"
end
