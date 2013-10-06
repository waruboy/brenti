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

ActiveRecord::Schema.define(version: 20131006003359) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "haltes", force: true do |t|
    t.string   "kode"
    t.string   "nama"
    t.integer  "transfer_id"
    t.integer  "koridor_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "haltes", ["koridor_id"], name: "index_haltes_on_koridor_id"
  add_index "haltes", ["nama"], name: "index_haltes_on_nama"

  create_table "koridors", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "koridors", ["name"], name: "index_koridors_on_name"

  create_table "place_categories", force: true do |t|
    t.integer  "place_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "place_categories", ["category_id"], name: "index_place_categories_on_category_id"
  add_index "place_categories", ["place_id", "category_id"], name: "index_place_categories_on_place_id_and_category_id", unique: true
  add_index "place_categories", ["place_id"], name: "index_place_categories_on_place_id"

  create_table "places", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["name"], name: "index_places_on_name"

end
