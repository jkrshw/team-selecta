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

ActiveRecord::Schema.define(version: 20131009071846) do

  create_table "affiliations", force: true do |t|
    t.integer "hub_id"
    t.integer "club_id"
  end

  add_index "affiliations", ["club_id"], name: "index_affiliations_on_club_id", using: :btree
  add_index "affiliations", ["hub_id"], name: "index_affiliations_on_hub_id", using: :btree

  create_table "attending_states", force: true do |t|
    t.string "name", null: false
  end

  add_index "attending_states", ["name"], name: "index_attending_states_on_name", unique: true, using: :btree

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "club_id"
    t.string   "name"
    t.text     "description"
    t.datetime "time"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["club_id"], name: "index_events_on_club_id", using: :btree

  create_table "guests", force: true do |t|
    t.integer  "user_id",            null: false
    t.integer  "event_id",           null: false
    t.integer  "attending_state_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guests", ["attending_state_id"], name: "index_guests_on_attending_state_id", using: :btree
  add_index "guests", ["event_id"], name: "index_guests_on_event_id", using: :btree
  add_index "guests", ["user_id"], name: "index_guests_on_user_id", using: :btree

  create_table "hubs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "joined"
    t.datetime "ended"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["club_id"], name: "index_members_on_club_id", using: :btree
  add_index "members", ["user_id"], name: "index_members_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
