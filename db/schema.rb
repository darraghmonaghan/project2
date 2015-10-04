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

ActiveRecord::Schema.define(version: 20151004033130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "favorites"
  end

  create_table "clients_performers", force: :cascade do |t|
    t.string   "client_id"
    t.string   "string"
    t.string   "performer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "performers", force: :cascade do |t|
    t.string   "city"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "group"
    t.integer  "category_id"
    t.string   "rate"
    t.string   "performer_subcategory"
    t.string   "description"
    t.string   "instagram"
    t.string   "youtube"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "star_rating"
    t.string   "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
