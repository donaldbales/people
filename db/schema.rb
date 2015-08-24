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

ActiveRecord::Schema.define(version: 20150824013355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gender_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "identifier_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "identifiers", force: :cascade do |t|
    t.integer  "identifier_type_id"
    t.string   "value"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "industrial_hygiene_job_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "industrial_hygiene_jobs", force: :cascade do |t|
    t.integer  "industrial_hygiene_job_type_id"
    t.integer  "parent_id"
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.integer  "level"
    t.string   "context_id"
    t.string   "context_code"
    t.string   "context_description"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "location_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "location_type_id"
    t.integer  "parent_id"
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.integer  "level"
    t.string   "context_id"
    t.string   "context_code"
    t.string   "context_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "organization_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer  "organization_type_id"
    t.integer  "parent_id"
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.integer  "level"
    t.string   "context_id"
    t.string   "context_code"
    t.string   "context_description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "birth_datetime"
    t.integer  "gender_type_id"
    t.integer  "person_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "person_identifiers", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "identifier_id"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "person_industrial_hygiene_jobs", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "industrial_hygiene_job_id"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "person_locations", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "location_id"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "person_organizations", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "organization_id"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "person_positions", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "position_id"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "person_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "position_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "position_type_id"
    t.integer  "parent_id"
    t.string   "code"
    t.string   "description"
    t.datetime "active_datetime"
    t.datetime "inactive_datetime"
    t.integer  "level"
    t.string   "context_id"
    t.string   "context_code"
    t.string   "context_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
