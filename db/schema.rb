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

ActiveRecord::Schema.define(version: 20161010220115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guardians", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "affilation",   null: false
    t.string   "phone_number", null: false
    t.string   "email",        null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rallies", force: :cascade do |t|
    t.string   "name",            null: false
    t.integer  "attendees_limit", null: false
    t.string   "start_date",      null: false
    t.string   "end_date",        null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "name",                         null: false
    t.string   "student_id",                   null: false
    t.boolean  "accepted",     default: false, null: false
    t.boolean  "paid",         default: false, null: false
    t.boolean  "attended",     default: false, null: false
    t.string   "shirt_size",                   null: false
    t.boolean  "female_shirt", default: false, null: false
    t.string   "phone_number",                 null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "rally_id"
    t.string   "surname"
    t.index ["rally_id"], name: "index_registrations_on_rally_id", using: :btree
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "registrations", "rallies"
end
