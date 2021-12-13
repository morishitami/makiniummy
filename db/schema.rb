# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_12_121104) do

  create_table "actors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "time", null: false
    t.text "comment", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_actors_on_user_id"
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "q1", null: false
    t.boolean "q2", null: false
    t.boolean "q3", null: false
    t.boolean "q4", null: false
    t.boolean "q5", null: false
    t.boolean "q6", null: false
    t.boolean "q7", null: false
    t.boolean "q8", null: false
    t.boolean "q9", null: false
    t.boolean "q10", null: false
    t.boolean "q11", null: false
    t.boolean "q12", null: false
    t.boolean "q13", null: false
    t.boolean "q14", null: false
    t.boolean "q15", null: false
    t.boolean "q16", null: false
    t.boolean "q17", null: false
    t.boolean "q18", null: false
    t.boolean "q19", null: false
    t.boolean "q20", null: false
    t.boolean "q21", null: false
    t.boolean "q22", null: false
    t.boolean "q23", null: false
    t.boolean "q24", null: false
    t.boolean "q25", null: false
    t.boolean "q26", null: false
    t.boolean "q27", null: false
    t.boolean "q28", null: false
    t.boolean "q30", null: false
    t.boolean "q31", null: false
    t.boolean "q32", null: false
    t.boolean "q33", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "code", null: false
    t.text "name", null: false
    t.text "stage_name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actors", "users"
  add_foreign_key "questions", "users"
end
