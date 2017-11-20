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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171120170021) do
=======
ActiveRecord::Schema.define(version: 20171120192905) do
>>>>>>> master

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "date"
    t.integer  "price"
<<<<<<< HEAD
    t.integer  "meal_id"
    t.integer  "user_id"
    t.integer  "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_bookings_on_meal_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
=======
    t.integer  "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meal_id"
    t.integer  "buyer_id"
    t.index ["meal_id"], name: "index_bookings_on_meal_id", using: :btree
>>>>>>> master
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.string   "category"
    t.integer  "price"
<<<<<<< HEAD
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_meals_on_user_id", using: :btree
=======
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "chef_id"
>>>>>>> master
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "meals"
<<<<<<< HEAD
  add_foreign_key "bookings", "users"
  add_foreign_key "meals", "users"
=======
>>>>>>> master
end
