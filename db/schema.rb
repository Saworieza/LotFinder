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

ActiveRecord::Schema.define(version: 2021_10_20_105844) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "damages", force: :cascade do |t|
    t.string "state"
    t.string "primary"
    t.string "secondary"
    t.integer "value"
    t.text "details"
    t.integer "vehicle_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_damages_on_user_id"
    t.index ["vehicle_id"], name: "index_damages_on_vehicle_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "feature"
    t.integer "vehicle_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_features_on_user_id"
    t.index ["vehicle_id"], name: "index_features_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.integer "mileage"
    t.string "color"
    t.string "body_type"
    t.string "engine_type"
    t.string "VIN"
    t.string "transmission"
    t.integer "brand_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_vehicles_on_brand_id"
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

end
