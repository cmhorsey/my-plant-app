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

ActiveRecord::Schema[7.1].define(version: 2024_08_30_182538) do
  create_table "garden_plants", force: :cascade do |t|
    t.integer "garden_id", null: false
    t.integer "plant_id", null: false
    t.date "plant_date"
    t.integer "quantity"
    t.date "last_watered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_garden_plants_on_garden_id"
    t.index ["plant_id"], name: "index_garden_plants_on_plant_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "scientific_name"
    t.string "plant_type"
    t.boolean "edible"
    t.boolean "pet_safe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "garden_id"
    t.integer "plant_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "garden_plants", "gardens"
  add_foreign_key "garden_plants", "plants"
  add_foreign_key "gardens", "users"
  add_foreign_key "plants", "users"
end
