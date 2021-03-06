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

ActiveRecord::Schema.define(version: 20160727080550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "score_ids",  default: [],                 array: true
    t.string   "name"
    t.boolean  "active",     default: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "name"
    t.string   "info"
    t.float    "lat"
    t.float    "lng"
    t.integer  "league"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "team_1_id"
    t.integer  "team_2_id"
    t.integer  "captain_1_team_1_score"
    t.integer  "captain_1_team_2_score"
    t.integer  "captain_2_team_1_score"
    t.integer  "captain_2_team_2_score"
    t.integer  "official_team_1_score"
    t.integer  "official_team_2_score"
    t.boolean  "approved_score"
    t.string   "league"
    t.string   "primary_court"
    t.string   "secondary_court"
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "team_name"
    t.string   "league"
    t.integer  "status",            default: 0,  null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "players_id",        default: [],              array: true
    t.integer  "captain_id",        default: -1
    t.integer  "applied_user_ids",  default: [],              array: true
    t.text     "team_message"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.integer  "team_id",          default: -1
    t.boolean  "admin",            default: false
    t.integer  "pending_team_ids", default: [],                 array: true
    t.string   "about"
    t.float    "height"
    t.float    "weight"
    t.string   "twitter"
    t.boolean  "super_admin",      default: false
    t.string   "username"
    t.string   "primary_court"
    t.string   "secondary_court"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
