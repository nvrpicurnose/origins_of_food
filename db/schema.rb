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

ActiveRecord::Schema.define(version: 20150320222703) do

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "sciname"
    t.string   "origin"
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "map1_file_name"
    t.string   "map1_content_type"
    t.integer  "map1_file_size"
    t.datetime "map1_updated_at"
    t.string   "map2_file_name"
    t.string   "map2_content_type"
    t.integer  "map2_file_size"
    t.datetime "map2_updated_at"
    t.string   "map3_file_name"
    t.string   "map3_content_type"
    t.integer  "map3_file_size"
    t.datetime "map3_updated_at"
    t.string   "map4_file_name"
    t.string   "map4_content_type"
    t.integer  "map4_file_size"
    t.datetime "map4_updated_at"
    t.string   "map5_file_name"
    t.string   "map5_content_type"
    t.integer  "map5_file_size"
    t.datetime "map5_updated_at"
    t.string   "back1_file_name"
    t.string   "back1_content_type"
    t.integer  "back1_file_size"
    t.datetime "back1_updated_at"
    t.string   "icon1_file_name"
    t.string   "icon1_content_type"
    t.integer  "icon1_file_size"
    t.datetime "icon1_updated_at"
    t.text     "years"
    t.text     "source"
    t.string   "classification_file_name"
    t.string   "classification_content_type"
    t.integer  "classification_file_size"
    t.datetime "classification_updated_at"
  end

end
