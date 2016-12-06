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

ActiveRecord::Schema.define(version: 20161123201100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banks", force: :cascade do |t|
    t.string   "bname"
    t.string   "bacno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bankslips", force: :cascade do |t|
    t.string   "exad_name"
    t.date     "ddate"
    t.integer  "amount"
    t.string   "aname"
    t.string   "fname"
    t.string   "cnic"
    t.integer  "bank_id"
    t.integer  "department_id"
    t.integer  "purpose_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "slug"
  end

  add_index "bankslips", ["slug"], name: "index_bankslips_on_slug", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "dname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examinations", force: :cascade do |t|
    t.string   "ename"
    t.string   "year"
    t.string   "annual_supply"
    t.string   "roll_no"
    t.string   "division"
    t.string   "subject_pass"
    t.string   "board_uni"
    t.integer  "registration_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "purposes", force: :cascade do |t|
    t.string   "pname"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "sname"
    t.string   "fname"
    t.date     "d_of_b"
    t.string   "name_of_year_examination"
    t.string   "previous_registration_no"
    t.string   "board_university"
    t.string   "local_domicile"
    t.string   "religion"
    t.string   "cnic_no"
    t.text     "permanent_address"
    t.text     "present_address"
    t.string   "challan_no"
    t.integer  "amount"
    t.date     "registration_date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "slug"
  end

  add_index "registrations", ["slug"], name: "index_registrations_on_slug", using: :btree

  create_table "registrations_subjects", id: false, force: :cascade do |t|
    t.integer "subject_id",      null: false
    t.integer "registration_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
