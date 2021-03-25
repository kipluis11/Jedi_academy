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

ActiveRecord::Schema.define(version: 2021_03_25_000143) do

  create_table "masters", force: :cascade do |t|
    t.string "master_name"
    t.string "preferred_sabre_style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string "power_name"
    t.string "descritpion"
    t.integer "training_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["training_id"], name: "index_powers_on_training_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "training_name"
    t.string "power_learned"
    t.integer "master_id"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["master_id"], name: "index_trainings_on_master_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'belongs_to' for column 'masters'

  add_foreign_key "powers", "trainings"
  add_foreign_key "trainings", "masters"
end
