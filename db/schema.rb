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

ActiveRecord::Schema.define(version: 2021_11_06_022254) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comment_text"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_bases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_plan_collections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_tags", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plan_tags_on_plan_id"
    t.index ["tag_id"], name: "index_plan_tags_on_tag_id"
  end

  create_table "plans", force: :cascade do |t|
    t.integer "prefecture_id"
    t.integer "user_id"
    t.string "title"
    t.text "plan_introduction"
    t.integer "transportation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plan_image_id"
  end

  create_table "spots", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.string "spot_name", null: false
    t.string "spot_introduction"
    t.string "spot_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "schedule_time"
    t.index ["plan_id"], name: "index_spots_on_plan_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "gender"
    t.text "introduction"
    t.integer "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prefecture_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
