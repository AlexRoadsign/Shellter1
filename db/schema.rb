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

ActiveRecord::Schema.define(version: 20171128172933) do

  create_table "bookings", force: :cascade do |t|
    t.date "entry_date"
    t.date "end_date"
    t.integer "number_of_person"
    t.integer "user_id"
    t.integer "hostel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hostel_id"], name: "index_bookings_on_hostel_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "hostels", force: :cascade do |t|
    t.string "location"
    t.string "headline"
    t.string "name"
    t.integer "price"
    t.integer "rating"
    t.string "picture"
    t.string "category"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hostels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.string "description"
    t.string "email"
    t.boolean "host"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
