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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180402224527) do
=======
ActiveRecord::Schema.define(version: 20180405235553) do
>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.datetime "date"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
    t.index ["task_id"], name: "index_comments_on_task_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
=======

    t.string "password_digest"

>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b
    t.boolean "manager", default: false
    t.string "password_digest"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "lot"
    t.boolean "completed", default: false
    t.boolean "reoccuring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "due"
    t.integer "employee_id"
<<<<<<< HEAD
    t.index ["employee_id"], name: "index_tasks_on_employee_id"
=======
>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b
  end

end
