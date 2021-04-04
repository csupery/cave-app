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

ActiveRecord::Schema.define(version: 2021_04_04_095555) do

  create_table "castles", force: :cascade do |t|
    t.string "name"
    t.string "appellation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pays"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "quantity"
    t.integer "vintage_id", null: false
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vintage_id"], name: "index_stocks_on_vintage_id"
  end

  create_table "vintages", force: :cascade do |t|
    t.integer "year"
    t.integer "castle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["castle_id"], name: "index_vintages_on_castle_id"
  end

  add_foreign_key "stocks", "vintages"
  add_foreign_key "vintages", "castles"
end
