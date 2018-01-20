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

ActiveRecord::Schema.define(version: 20180120134311) do

  create_table "account_types", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "account_type_id"
    t.integer "payment_plan_id"
    t.date "next_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type_id"], name: "index_accounts_on_account_type_id"
    t.index ["payment_plan_id"], name: "index_accounts_on_payment_plan_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "change_requests", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_change_requests_on_business_id"
  end

  create_table "payment_plans", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "starting_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
