# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150405030533) do

  create_table "accounts", force: :cascade do |t|
    t.string   "gender"
    t.integer  "age"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_todoitems", id: false, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "todoitem_id"
  end

  add_index "tags_todoitems", ["tag_id"], name: "index_tags_todoitems_on_tag_id"
  add_index "tags_todoitems", ["todoitem_id"], name: "index_tags_todoitems_on_todoitem_id"

  create_table "todoitems", force: :cascade do |t|
    t.string   "task_title"
    t.string   "description"
    t.date     "due_date"
    t.integer  "todolist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "todoitems", ["todolist_id"], name: "index_todoitems_on_todolist_id"

  create_table "todolists", force: :cascade do |t|
    t.string   "list_name"
    t.date     "list_due_date"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "todolists", ["user_id"], name: "index_todolists_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end