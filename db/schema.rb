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

ActiveRecord::Schema.define(version: 20160720112916) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "period"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "owner_id"
  end

  create_table "accounts_users", id: false, force: :cascade do |t|
    t.integer "account_id"
    t.integer "user_id"
  end

  create_table "bills", force: :cascade do |t|
    t.float    "amount"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "wallet_id"
    t.integer  "account_id"
  end
  
  create_table "bullets", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "cost"
    t.boolean  "paid",       default: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "one_shot_id"
  end
  
  create_table "one_shots", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "owner_id"
  end


  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "username"
    t.string   "email"
    t.string   "paypal_url"
    t.string   "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
