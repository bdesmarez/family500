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

ActiveRecord::Schema.define(version: 20160125150457) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "description",     limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "family_business"
    t.string   "alias",           limit: 255
    t.string   "website",         limit: 255
    t.string   "branch",          limit: 255
    t.datetime "creation_date"
    t.integer  "postal_code",     limit: 4
    t.string   "city",            limit: 255
    t.string   "street",          limit: 255
    t.string   "phone",           limit: 255
    t.string   "mobile",          limit: 255
    t.string   "fax",             limit: 255
    t.string   "email",           limit: 255
    t.string   "family_name",     limit: 255
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.string   "civility",   limit: 255
    t.string   "title",      limit: 255
    t.string   "name",       limit: 255
    t.string   "firstname",  limit: 255
    t.string   "position",   limit: 255
    t.string   "phone",      limit: 255
    t.string   "mobile",     limit: 255
    t.string   "fax",        limit: 255
    t.string   "mail",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id", using: :btree

  create_table "rankings", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.integer  "year",       limit: 4
    t.integer  "turnover",   limit: 8
    t.integer  "employees",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "rankings", ["company_id"], name: "index_rankings_on_company_id", using: :btree

  add_foreign_key "contacts", "companies"
  add_foreign_key "rankings", "companies"
end
