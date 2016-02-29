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

ActiveRecord::Schema.define(version: 20160226191500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "room"
    t.string   "task"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learners", force: :cascade do |t|
    t.string   "name"
    t.string   "notes"
    t.string   "role",       default: "0"
    t.integer  "group_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "learners", ["group_id"], name: "index_learners_on_group_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["product_id"], name: "index_likes_on_product_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.time     "duration"
    t.datetime "dead_line"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree


  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "pict"
    t.float    "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "type"
    t.integer  "provider_id"
  end

  add_index "products", ["provider_id"], name: "index_products_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "brand_name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "providers", ["user_id"], name: "index_providers_on_user_id", using: :btree


  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.time     "duration"
    t.datetime "due_date"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tasks", ["list_id"], name: "index_tasks_on_list_id", using: :btree


  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone"
    t.integer  "subscribe"
    t.integer  "gender"
    t.string   "adress"
    t.integer  "citycode"
    t.string   "city"
    t.string   "username"
    t.integer  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "learners", "groups"
  add_foreign_key "likes", "products"
  add_foreign_key "likes", "users"
  add_foreign_key "lists", "users"
  add_foreign_key "products", "providers"
  add_foreign_key "providers", "users"
  add_foreign_key "tasks", "lists"
end
