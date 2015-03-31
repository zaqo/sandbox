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

ActiveRecord::Schema.define(version: 20150331075814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pro",        limit: 250
    t.string   "prof"
  end

  create_table "shifts", force: true do |t|
    t.string   "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "time"
  end

  create_table "shotdowns", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.string   "reason"
    t.integer  "shift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shotdowntypes_id"
  end

  add_index "shotdowns", ["shift_id"], name: "index_shotdowns_on_shift_id", using: :btree
  add_index "shotdowns", ["shotdowntypes_id"], name: "index_shotdowns_on_shotdowntypes_id", using: :btree

  create_table "shotdowntypes", force: true do |t|
    t.string   "location"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
