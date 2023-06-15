# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_11_171735) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "item_description"
    t.string "item_size"
    t.string "status", default: "Pending"
    t.string "pickup_name"
    t.string "pickup_address"
    t.float "pickup_longitude"
    t.float "pickup_latitude"
    t.string "pickup_contact_phone"
    t.string "pickup_additional_detail"
    t.datetime "pickup_at"
    t.string "dropoff_name"
    t.string "dropoff_address"
    t.float "dropoff_longitude"
    t.float "dropoff_latitude"
    t.string "dropoff_contact_phone"
    t.string "dropoff_additional_detail"
    t.datetime "dropoff_at"
    t.float "price"
    t.float "distance"
    t.bigint "customer_id", null: false
    t.bigint "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "duration"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["driver_id"], name: "index_orders_on_driver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "driver", default: false
    t.string "contact_phone"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "users", column: "customer_id"
  add_foreign_key "orders", "users", column: "driver_id"
end
