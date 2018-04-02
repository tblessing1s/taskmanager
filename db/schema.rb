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




ActiveRecord::Schema.define(version: 20180327000300) do

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.datetime "date"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_comments_on_task_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.string "password_digest"


    t.boolean "manager", default: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "lot"
    t.boolean "completed"
    t.boolean "reoccuring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "due"
  end

end
