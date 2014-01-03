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

ActiveRecord::Schema.define(version: 20131231190659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.integer  "jigsawid"
    t.string   "name"
    t.string   "website"
    t.text     "overview"
    t.text     "headquarters"
    t.string   "phone"
    t.text     "industries"
    t.string   "employees"
    t.string   "revenue"
    t.string   "ownership"
    t.integer  "contacts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["jigsawid"], name: "index_companies_on_jigsawid", using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "jigsawid"
    t.integer  "company_id"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "title"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id", using: :btree
  add_index "contacts", ["jigsawid"], name: "index_contacts_on_jigsawid", using: :btree

end
