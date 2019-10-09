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

ActiveRecord::Schema.define(version: 2019_10_09_233656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "title"
  end

  create_table "user_tables", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.float "pay_rate"
    t.integer "hours_requested"
    t.integer "role"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_user_tables_on_company_id"
  end

  add_foreign_key "user_tables", "companies"
end
