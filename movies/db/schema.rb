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

  create_table "actors", force: :cascade do |t|
    t.string "name"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
  end

  create_table "movies", force: :cascade do |t|
    t.string  "name"
    t.text    "summary"
    t.string  "year_released"
    t.integer "director_id"
  end

  add_index "movies", ["director_id"], name: "index_movies_on_director_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
    t.integer "rating"
    t.text    "body"
  end

  add_index "reviews", ["movie_id"], name: "index_reviews_on_movie_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "roles", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.string  "character"
  end

  add_index "roles", ["actor_id"], name: "index_roles_on_actor_id"
  add_index "roles", ["movie_id"], name: "index_roles_on_movie_id"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
  end

end
