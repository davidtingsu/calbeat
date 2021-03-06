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

ActiveRecord::Schema.define(version: 20140331212330) do

  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "categories", ["deleted_at"], name: "index_categories_on_deleted_at"
  add_index "categories", ["name"], name: "index_categories_on_name", unique: true
  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true

  create_table "categories_clubs", id: false, force: true do |t|
    t.integer "club_id",     null: false
    t.integer "category_id", null: false
  end

  add_index "categories_clubs", ["category_id"], name: "index_categories_clubs_on_category_id"
  add_index "categories_clubs", ["club_id", "category_id"], name: "index_categories_clubs_on_club_id_and_category_id", unique: true
  add_index "categories_clubs", ["club_id"], name: "index_categories_clubs_on_club_id"

  create_table "clubs", force: true do |t|
    t.string   "name",              null: false
    t.string   "slug"
    t.string   "abbrev"
    t.integer  "school_id",         null: false
    t.text     "introduction"
    t.string   "website"
    t.integer  "size"
    t.text     "requirements"
    t.text     "meeting"
    t.text     "address"
    t.text     "activity_summary"
    t.string   "contact_person"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "facebook_id"
    t.string   "facebook_url"
    t.integer  "SGID"
    t.string   "callink_permalink"
    t.string   "related_club_ids"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "clubs", ["deleted_at"], name: "index_clubs_on_deleted_at"
  add_index "clubs", ["facebook_id"], name: "index_clubs_on_facebook_id", unique: true
  add_index "clubs", ["name"], name: "index_clubs_on_name", unique: true
  add_index "clubs", ["school_id"], name: "index_clubs_on_school_id"
  add_index "clubs", ["slug"], name: "index_clubs_on_slug", unique: true

  create_table "events", force: true do |t|
    t.string   "name",        null: false
    t.string   "slug"
    t.string   "location"
    t.integer  "facebook_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "events", ["club_id"], name: "index_events_on_club_id"
  add_index "events", ["deleted_at"], name: "index_events_on_deleted_at"
  add_index "events", ["facebook_id"], name: "index_events_on_facebook_id", unique: true
  add_index "events", ["name"], name: "index_events_on_name", unique: true
  add_index "events", ["slug"], name: "index_events_on_slug", unique: true

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "schools", force: true do |t|
    t.string   "name",       null: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "schools", ["deleted_at"], name: "index_schools_on_deleted_at"
  add_index "schools", ["slug"], name: "index_schools_on_slug", unique: true

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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
