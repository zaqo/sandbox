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

ActiveRecord::Schema.define(version: 20150616155651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genparams", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.string   "sortament"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shift_id"
    t.integer  "tr90t"
    t.string   "fan261"
    t.string   "fan262"
    t.string   "fan263"
    t.string   "fan264"
    t.string   "fan265"
    t.string   "fan266"
    t.decimal  "vel90",       precision: 5, scale: 2
    t.decimal  "vel51",       precision: 5, scale: 2
    t.decimal  "waterpc",     precision: 5, scale: 2
    t.decimal  "waterl",      precision: 5, scale: 2
    t.decimal  "watert",      precision: 5, scale: 2
    t.decimal  "headt1",      precision: 5, scale: 2
    t.decimal  "headt2",      precision: 5, scale: 2
    t.decimal  "cylt1",       precision: 5, scale: 2
    t.decimal  "cylt2",       precision: 5, scale: 2
    t.decimal  "rot1",        precision: 5, scale: 2
    t.decimal  "rot2",        precision: 5, scale: 2
    t.decimal  "pressbar1",   precision: 5, scale: 2
    t.decimal  "pressbar2",   precision: 5, scale: 2
    t.decimal  "tr51t",       precision: 5, scale: 2
    t.decimal  "tr51f",       precision: 5, scale: 2
    t.decimal  "tr561t",      precision: 5, scale: 2
    t.decimal  "tr561f",      precision: 5, scale: 2
    t.decimal  "tr562t",      precision: 5, scale: 2
    t.decimal  "tr562f",      precision: 5, scale: 2
    t.decimal  "tr563t",      precision: 5, scale: 2
    t.decimal  "tr563f",      precision: 5, scale: 2
    t.decimal  "tr564t",      precision: 5, scale: 2
    t.decimal  "tr564f",      precision: 5, scale: 2
    t.decimal  "tr565t",      precision: 5, scale: 2
    t.decimal  "tr565f",      precision: 5, scale: 2
    t.decimal  "flour",       precision: 6, scale: 2
    t.string   "supplier_id"
  end

  add_index "genparams", ["shift_id"], name: "index_genparams_on_shift_id", using: :btree

  create_table "humparams", force: true do |t|
    t.time     "htime"
    t.integer  "shift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "tr90",       precision: 5, scale: 2
    t.decimal  "tr51",       precision: 5, scale: 2
    t.decimal  "tr56_1",     precision: 5, scale: 2
    t.decimal  "tr56_2",     precision: 5, scale: 2
    t.decimal  "tr56_3",     precision: 5, scale: 2
    t.decimal  "tr56_4",     precision: 5, scale: 2
    t.decimal  "tr56_5",     precision: 5, scale: 2
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
    t.string   "operator"
    t.string   "mechanic"
    t.string   "kip"
    t.string   "mechanicpsh"
    t.string   "operator1"
    t.string   "operator2"
    t.datetime "date"
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

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.integer  "structure"
    t.string   "inn"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "techparams", force: true do |t|
    t.integer  "shift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "ttime"
    t.decimal  "waterpc",    precision: 5, scale: 2
    t.decimal  "waterl",     precision: 5, scale: 2
    t.decimal  "flour",      precision: 6, scale: 2
    t.decimal  "tempz",      precision: 5, scale: 2
    t.decimal  "temph1",     precision: 5, scale: 2
    t.decimal  "temph2",     precision: 5, scale: 2
    t.decimal  "tempcyl1",   precision: 5, scale: 2
    t.decimal  "tempcyl2",   precision: 5, scale: 2
    t.decimal  "rotate1",    precision: 5, scale: 2
    t.decimal  "rotate2",    precision: 5, scale: 2
    t.decimal  "press1",     precision: 5, scale: 2
    t.decimal  "press2",     precision: 5, scale: 2
    t.decimal  "temp90",     precision: 5, scale: 2
    t.decimal  "temp51",     precision: 5, scale: 2
    t.decimal  "hum51",      precision: 5, scale: 2
    t.decimal  "temp56_1",   precision: 5, scale: 2
    t.decimal  "hum56_1",    precision: 5, scale: 2
    t.decimal  "temp56_2",   precision: 5, scale: 2
    t.decimal  "hum56_2",    precision: 5, scale: 2
    t.decimal  "temp56_3",   precision: 5, scale: 2
    t.decimal  "hum56_3",    precision: 5, scale: 2
    t.decimal  "temp56_4",   precision: 5, scale: 2
    t.decimal  "hum56_4",    precision: 5, scale: 2
    t.decimal  "temp56_5",   precision: 5, scale: 2
    t.decimal  "hum56_5",    precision: 5, scale: 2
  end

  add_index "techparams", ["shift_id"], name: "index_techparams_on_shift_id", using: :btree

end
