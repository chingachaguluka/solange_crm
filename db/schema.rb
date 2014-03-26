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

ActiveRecord::Schema.define(version: 20140326113216) do

  create_table "account_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "accont_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cell_phone1"
    t.string   "cell_phone2"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cell_phone"
    t.string   "email"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cell_phone1"
    t.string   "cell_phone2"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.string   "employment_number"
    t.date     "date_of_birth"
    t.date     "engaged_on"
    t.date     "terminated_on"
    t.integer  "employee_status_id"
    t.boolean  "temporary"
    t.boolean  "under_probation"
    t.string   "next_of_kin"
    t.string   "next_of_kin_phone"
    t.string   "next_of_kin_email"
    t.string   "next_of_kin_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
    t.string   "status"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "selling_price",       precision: 10, scale: 2
    t.boolean  "is_service"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "disabled"
    t.integer  "employee_id"
    t.integer  "system_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
