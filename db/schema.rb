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

ActiveRecord::Schema.define(version: 20140801182227) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pokeballs", force: true do |t|
    t.integer  "trainer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "character_id"
  end

  create_table "pokemontypes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "character_id"
    t.integer  "type_id"
  end

  create_table "trainers", force: true do |t|
    t.string   "name"
    t.string   "img"
    t.integer  "trainer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.string   "img"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
