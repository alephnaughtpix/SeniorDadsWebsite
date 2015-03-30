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

ActiveRecord::Schema.define(version: 20150330131806) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "parent_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demo_file_collections", force: true do |t|
    t.integer  "demo_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_id"
  end

  add_index "demo_file_collections", ["demo_id"], name: "index_demo_file_collections_on_demo_id"
  add_index "demo_file_collections", ["link_id"], name: "index_demo_file_collections_on_link_id"

  create_table "demos", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "platform"
    t.float    "size"
    t.datetime "release_date"
    t.integer  "gallery_id"
    t.integer  "demo_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_id"
  end

  add_index "demos", ["gallery_id"], name: "index_demos_on_gallery_id"
  add_index "demos", ["link_id"], name: "index_demos_on_link_id"

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gallery_collections", force: true do |t|
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_id"
  end

  add_index "gallery_collections", ["gallery_id"], name: "index_gallery_collections_on_gallery_id"
  add_index "gallery_collections", ["link_id"], name: "index_gallery_collections_on_link_id"

  create_table "links", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["category_id"], name: "index_links_on_category_id"

  create_table "member_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "joined"
    t.text     "join_reason"
    t.text     "function"
    t.string   "first_computer"
    t.text     "any_other_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gallery_id"
    t.integer  "category_id"
  end

  add_index "members", ["category_id"], name: "index_members_on_category_id"
  add_index "members", ["gallery_id"], name: "index_members_on_gallery_id"

  create_table "music_file_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "music_files", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_id"
  end

  add_index "music_files", ["link_id"], name: "index_music_files_on_link_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_files", ["site_file_type_id"], name: "index_site_files_on_site_file_type_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
