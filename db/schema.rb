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

ActiveRecord::Schema.define(version: 20160111195025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispatchers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.datetime "next_available_time"
    t.string   "next_available_location"
    t.string   "phone"
    t.string   "email"
    t.integer  "dispatcher_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "loads", force: :cascade do |t|
    t.integer  "status"
    t.date     "early_pickup_date"
    t.time     "early_pickup_time"
    t.string   "origin_city"
    t.string   "origin_state"
    t.string   "origin_address"
    t.string   "origin_zip"
    t.string   "destination_zip"
    t.string   "destination_address"
    t.string   "destination_state"
    t.string   "destination_city"
    t.integer  "driver_id"
    t.integer  "shipper_id"
    t.integer  "dispatcher_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "shippers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
