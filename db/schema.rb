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

ActiveRecord::Schema.define(version: 20160309173251) do

  create_table "stores", force: :cascade do |t|
    t.string   "store_name"
    t.string   "store_location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "store_id"
    t.string   "warehouse_id"
    t.string   "supplier_name"
    t.string   "contact_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email_address"
    t.string   "password"
    t.string   "api_key"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string   "warehouse_name"
    t.string   "warehouse_location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
