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

ActiveRecord::Schema.define(version: 2019_01_01_161134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oil_changes", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.date "date"
    t.decimal "mileage"
    t.string "oil_used"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_oil_changes_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "nickname"
    t.string "make"
    t.string "model"
    t.decimal "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "oil_changes", "vehicles"
end
