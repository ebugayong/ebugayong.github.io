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

ActiveRecord::Schema.define(version: 0) do

  create_table "case_sources", force: :cascade do |t|
    t.string "source"
  end

  create_table "cases", force: :cascade do |t|
    t.integer "source_id"
    t.string  "title"
  end

  add_index "cases", ["source_id"], name: "index_cases_on_source_id"

  create_table "firstyears", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "password"
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "meeting_time"
    t.integer  "firstyear_id"
    t.integer  "secondyear_id"
    t.integer  "case_id"
  end

  add_index "meetings", ["case_id"], name: "index_meetings_on_case_id"
  add_index "meetings", ["firstyear_id"], name: "index_meetings_on_firstyear_id"
  add_index "meetings", ["secondyear_id"], name: "index_meetings_on_secondyear_id"

  create_table "second_years", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "password"
  end

end
