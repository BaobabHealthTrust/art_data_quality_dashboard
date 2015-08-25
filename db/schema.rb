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

ActiveRecord::Schema.define(version: 20150825085333) do

  create_table "action_taken", primary_key: "action_id", force: true do |t|
    t.integer  "user_id"
    t.integer  "action_type_id"
    t.date     "action_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "action_type", primary_key: "action_type_id", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter", primary_key: "encounter_id", force: true do |t|
    t.integer  "encounter_type_id",  null: false
    t.integer  "action_id"
    t.datetime "encounter_datetime"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter_type", primary_key: "encounter_type_id", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site", primary_key: "site_id", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sync_status", primary_key: "sync_status_id", force: true do |t|
    t.integer  "site_id"
    t.datetime "start_datetime", null: false
    t.datetime "end_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", id: false, force: true do |t|
    t.integer  "user_id"
    t.string   "role",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",                      null: false
    t.text     "password_hash",                 null: false
    t.integer  "person_id",                     null: false
    t.string   "email"
    t.string   "phone_number"
    t.boolean  "voided",        default: false, null: false
    t.text     "void_reason"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
