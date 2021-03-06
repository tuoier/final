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

ActiveRecord::Schema.define(version: 20140607054456) do

  create_table "airlines", force: true do |t|
    t.string "iata"
    t.string "name"
    t.string "base"
  end

  create_table "cities", force: true do |t|
    t.string  "name"
    t.integer "x_axis"
    t.integer "y_axis"
  end

  create_table "favorites", force: true do |t|
    t.integer "user_id"
    t.integer "route_id"
    t.boolean "status",   default: false
  end

  create_table "routes", force: true do |t|
    t.integer "airline_id"
    t.integer "code"
    t.integer "depart_city_id"
    t.integer "arrival_city_id"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "email"
  end

end
