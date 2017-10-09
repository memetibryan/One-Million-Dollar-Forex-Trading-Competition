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

ActiveRecord::Schema.define(version: 20171009131438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.text "company_name"
    t.text "company_website"
    t.text "name"
    t.text "address"
    t.bigint "phone_number"
    t.text "email"
    t.integer "ticket_quantity"
    t.integer "security_code"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "east_africa_awards", force: :cascade do |t|
    t.text "company_name"
    t.text "company_website"
    t.text "name"
    t.text "address"
    t.bigint "phone_number"
    t.text "email"
    t.integer "ticket_quantity"
    t.integer "security_code"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "south_africa_awards", force: :cascade do |t|
    t.text "company_name"
    t.text "company_website"
    t.text "name"
    t.text "address"
    t.bigint "phone_number"
    t.text "email"
    t.integer "ticket_quantity"
    t.integer "security_code"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
