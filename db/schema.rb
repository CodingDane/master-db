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

ActiveRecord::Schema[7.1].define(version: 2024_03_20_065639) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "wa_li_bookmarks", force: :cascade do |t|
    t.string "comment"
    t.bigint "wa_li_movie_id", null: false
    t.bigint "wa_li_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wa_li_list_id"], name: "index_wa_li_bookmarks_on_wa_li_list_id"
    t.index ["wa_li_movie_id"], name: "index_wa_li_bookmarks_on_wa_li_movie_id"
  end

  create_table "wa_li_lists", force: :cascade do |t|
    t.string "name"
    t.bigint "wa_li_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wa_li_user_id"], name: "index_wa_li_lists_on_wa_li_user_id"
  end

  create_table "wa_li_movies", force: :cascade do |t|
    t.string "title"
    t.string "overview"
    t.string "posterurl"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wa_li_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_wa_li_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_wa_li_users_on_reset_password_token", unique: true
  end

  add_foreign_key "wa_li_bookmarks", "wa_li_lists"
  add_foreign_key "wa_li_bookmarks", "wa_li_movies"
  add_foreign_key "wa_li_lists", "wa_li_users"
end
