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

ActiveRecord::Schema.define(version: 20150410171226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genparams", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.string   "sortament"
    t.integer  "vel90"
    t.integer  "vel51"
    t.integer  "fan261"
    t.integer  "fan262"
    t.integer  "fan263"
    t.integer  "fan264"
    t.integer  "fan265"
    t.integer  "fan266"
    t.integer  "waterpc"
    t.integer  "waterl"
    t.integer  "flour"
    t.integer  "watert"
    t.integer  "headt1"
    t.integer  "headt2"
    t.integer  "cylt1"
    t.integer  "cylt2"
    t.integer  "rot1"
    t.integer  "rot2"
    t.integer  "pressbar1"
    t.integer  "pressbar2"
    t.integer  "tr51t"
    t.integer  "tr51f"
    t.integer  "tr561t"
    t.integer  "tr561f"
    t.integer  "tr562t"
    t.integer  "tr562f"
    t.integer  "tr563t"
    t.integer  "tr563f"
    t.integer  "tr564t"
    t.integer  "tr564f"
    t.integer  "tr565t"
    t.integer  "tr565f"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shift_id"
    t.integer  "tr90t"
  end

  add_index "genparams", ["shift_id"], name: "index_genparams_on_shift_id", using: :btree

  create_table "humparams", force: true do |t|
    t.time     "htime"
    t.integer  "tr90"
    t.integer  "tr51"
    t.integer  "tr56_1"
    t.integer  "tr56_2"
    t.integer  "tr56_3"
    t.integer  "tr56_4"
    t.integer  "tr56_5"
    t.integer  "shift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "humparams", ["shift_id"], name: "index_humparams_on_shift_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pro",        limit: 250
    t.string   "prof"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number"
    t.string   "name_it"
  end

  create_table "shifts", force: true do |t|
    t.string   "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "time"
    t.integer  "person_id"
    t.string   "operator"
    t.string   "mechanic"
    t.string   "kip"
    t.string   "technolog"
    t.string   "sortament"
    t.string   "flour"
    t.string   "supplier"
    t.string   "mechanicpsh"
  end

  add_index "shifts", ["person_id"], name: "index_shifts_on_person_id", using: :btree

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

  create_table "techparams", force: true do |t|
    t.integer  "ttime"
    t.integer  "waterpc"
    t.integer  "waterl"
    t.integer  "flour"
    t.integer  "tempz"
    t.integer  "temph1"
    t.integer  "temph2"
    t.integer  "tempcyl1"
    t.integer  "tempcyl2"
    t.integer  "rotate1"
    t.integer  "rotate2"
    t.integer  "press1"
    t.integer  "press2"
    t.integer  "temp90"
    t.integer  "temp51"
    t.integer  "hum51"
    t.integer  "temp56_1"
    t.integer  "hum56_1"
    t.integer  "temp56_2"
    t.integer  "hum56_2"
    t.integer  "temp56_3"
    t.integer  "hum56_3"
    t.integer  "temp56_4"
    t.integer  "hum56_4"
    t.integer  "temp56_5"
    t.integer  "hum56_5"
    t.integer  "shift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "techparams", ["shift_id"], name: "index_techparams_on_shift_id", using: :btree

end
