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

ActiveRecord::Schema.define(version: 20160406030849) do

  create_table "chows", force: :cascade do |t|
    t.text     "name"
    t.float    "serving_size"
    t.float    "calories"
    t.float    "sat_fat"
    t.float    "sodium"
    t.float    "carbs"
    t.float    "sugar"
    t.float    "fiber"
    t.float    "protein"
    t.float    "whole_grain"
    t.integer  "ca_fe_k_at_20_percent"
    t.integer  "gluten_free"
    t.integer  "organic"
    t.text     "tag"
    t.integer  "upc"
    t.text     "food_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "health_concerns", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
