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

ActiveRecord::Schema.define(version: 20140418131346) do

  create_table "mac_addresses", id: false, force: true do |t|
    t.string   "address"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mac_addresses", ["user_id"], name: "index_mac_addresses_on_user_id"

  create_table "sessions", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "mac_address"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "users", id: false, force: true do |t|
    t.string   "cid"
    t.integer  "total_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
