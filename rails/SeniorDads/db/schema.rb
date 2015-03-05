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

ActiveRecord::Schema.define(version: 20150305120457) do

  create_table "demos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gallery_collections", force: true do |t|
    t.integer  "gallery_id"
    t.integer  "site_file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.text     "description"
    t.integer  "site_file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["site_file_id"], name: "index_pictures_on_site_file_id"

  create_table "site_file_types", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_files", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.integer  "site_file_type_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_files", ["site_file_type_id"], name: "index_site_files_on_site_file_type_id"

end
