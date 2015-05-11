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

ActiveRecord::Schema.define(version: 20150204221458) do

  create_table "books", force: :cascade do |t|
    t.string "name",    limit: 256, null: false
    t.string "version", limit: 255
  end

  create_table "members", force: :cascade do |t|
    t.string "firstname", limit: 256, null: false
    t.string "lastname",  limit: 256
    t.string "address1",  limit: 255
  end

  create_table "members_projects", force: :cascade do |t|
    t.integer  "member_id",  limit: 4, null: false
    t.integer  "project_id", limit: 4, null: false
    t.datetime "date"
  end

  add_index "members_projects", ["member_id"], name: "fk_members_projects_members1", using: :btree
  add_index "members_projects", ["project_id"], name: "fk_members_projects_projects1", using: :btree

  create_table "members_ranks", force: :cascade do |t|
    t.integer  "member_id", limit: 4, null: false
    t.integer  "ranks_id",  limit: 4, null: false
    t.datetime "date"
  end

  add_index "members_ranks", ["member_id"], name: "fk_table1_members", using: :btree
  add_index "members_ranks", ["ranks_id"], name: "fk_table1_ranks1", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string  "name",    limit: 256, null: false
    t.integer "book_id", limit: 4,   null: false
  end

  add_index "projects", ["book_id"], name: "fk_projects_books1", using: :btree

  create_table "ranks", force: :cascade do |t|
    t.string "name", limit: 256, null: false
  end

  add_foreign_key "members_projects", "members", name: "fk_members_projects_members1"
  add_foreign_key "members_projects", "projects", name: "fk_members_projects_projects1"
  add_foreign_key "members_ranks", "members", name: "fk_table1_members"
  add_foreign_key "members_ranks", "ranks", column: "ranks_id", name: "fk_table1_ranks1"
  add_foreign_key "projects", "books", name: "fk_projects_books1"
end
