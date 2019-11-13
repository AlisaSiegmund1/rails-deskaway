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

ActiveRecord::Schema.define(version: 2019_11_13_095508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_price"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["workspace_id"], name: "index_bookings_on_workspace_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "photo"
    t.string "linked_in"
    t.string "profession"
    t.string "industry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "utilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workspace_details", force: :cascade do |t|
    t.bigint "workspace_id"
    t.bigint "utilities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utilities_id"], name: "index_workspace_details_on_utilities_id"
    t.index ["workspace_id"], name: "index_workspace_details_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.string "type"
    t.string "company"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "price_per_hour"
    t.string "general_description"
    t.index ["user_id"], name: "index_workspaces_on_user_id"
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "workspaces"
  add_foreign_key "workspace_details", "utilities", column: "utilities_id"
  add_foreign_key "workspace_details", "workspaces"
  add_foreign_key "workspaces", "users"
end
