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

ActiveRecord::Schema.define(version: 20171016151533) do

  create_table "devices", force: :cascade do |t|
    t.integer "label"
    t.string "wine"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedata", force: :cascade do |t|
    t.string "time"
    t.float "white"
    t.float "red"
    t.float "green"
    t.float "blue"
    t.float "violate"
    t.float "purple"
    t.float "yellow"
    t.float "mass"
    t.float "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedata2s", force: :cascade do |t|
    t.string "time"
    t.float "white"
    t.float "red"
    t.float "green"
    t.float "blue"
    t.float "violate"
    t.float "purple"
    t.float "yellow"
    t.float "mass"
    t.float "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedata3s", force: :cascade do |t|
    t.string "time"
    t.float "white"
    t.float "red"
    t.float "green"
    t.float "blue"
    t.float "violate"
    t.float "purple"
    t.float "yellow"
    t.float "mass"
    t.float "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedata4s", force: :cascade do |t|
    t.string "time"
    t.float "white"
    t.float "red"
    t.float "green"
    t.float "blue"
    t.float "violate"
    t.float "purple"
    t.float "yellow"
    t.float "mass"
    t.float "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedata5s", force: :cascade do |t|
    t.string "time"
    t.float "white"
    t.float "red"
    t.float "green"
    t.float "blue"
    t.float "violate"
    t.float "purple"
    t.float "yellow"
    t.float "mass"
    t.float "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winedatabase", primary_key: "ID", force: :cascade do |t|
    t.string "TYPE", limit: 30, null: false
    t.string "NAME", limit: 30, null: false
    t.integer "WEIGHT", null: false
    t.decimal "ALC", precision: 10, scale: 1, null: false
    t.decimal "WHITE", precision: 10, scale: 2, null: false
    t.decimal "RED", precision: 10, scale: 2, null: false
    t.decimal "GREEN", precision: 10, scale: 2, null: false
    t.decimal "BLUE", precision: 10, scale: 2, null: false
    t.decimal "YELLOW", precision: 10, scale: 2, null: false
    t.decimal "PURPLE", precision: 10, scale: 2, null: false
    t.decimal "VIOLATE", precision: 10, scale: 2, null: false
    t.string "BOTTLECOLOR", limit: 1, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.float "status"
    t.float "abv"
    t.string "origin"
    t.date "brewdate"
    t.integer "age"
    t.date "keepdate"
    t.float "score"
    t.float "weight"
    t.float "taste"
    t.string "imgurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
