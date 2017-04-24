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

ActiveRecord::Schema.define(version: 20170423141106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "backgrounds", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bllock_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "block_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "confirmation_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "museum_owners", force: :cascade do |t|
    t.integer  "subscription_id"
    t.string   "username"
    t.string   "password"
    t.string   "org_name_eng"
    t.string   "email_address"
    t.string   "current_website"
    t.boolean  "blocked",         default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reject_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "org_name_thai"
    t.string   "org_abbr_thai"
    t.string   "org_name_eng"
    t.string   "org_abbr_eng"
    t.string   "email_address"
    t.boolean  "type_of_org_private_sector"
    t.boolean  "type_of_org_government_sector"
    t.boolean  "type_of_org_education_institute"
    t.string   "type_of_org_other"
    t.string   "street_address"
    t.string   "tambon"
    t.string   "amphur"
    t.string   "province"
    t.integer  "postal_code"
    t.integer  "telephone"
    t.boolean  "house_in_temple"
    t.boolean  "house_in_local_museum"
    t.boolean  "house_in_government_agency_or_uni"
    t.string   "house_in_other"
    t.boolean  "museum_type_art_museum"
    t.boolean  "museum_type_modern_art_museum"
    t.boolean  "museum_type_natural_history_museum"
    t.boolean  "museum_type_science_museum_or_machinery_museum"
    t.boolean  "museum_type_anthropology_museum"
    t.boolean  "museum_type_history_and_archaeology_museum"
    t.boolean  "museum_type_local_museum"
    t.boolean  "museum_type_university_or_institute_museum"
    t.string   "museum_type_other"
    t.boolean  "exhibition_type_permanent_collection"
    t.boolean  "exhibition_type_temporary_rotated_collection"
    t.boolean  "displayed_object_type_pottery"
    t.boolean  "displayed_object_type_natural_history"
    t.boolean  "displayed_object_type_public_health_medicine"
    t.boolean  "displayed_object_type_religious"
    t.boolean  "displayed_object_type_archaeology"
    t.boolean  "displayed_object_type_history"
    t.boolean  "displayed_object_type_way_of_life_local_wisdom"
    t.boolean  "displayed_object_type_historical_house_building"
    t.boolean  "displayed_object_type_textile_clothing"
    t.boolean  "displayed_object_type_performance_arts"
    t.boolean  "displayed_object_type_tribes"
    t.boolean  "displayed_object_type_biography"
    t.boolean  "displayed_object_type_architecture"
    t.boolean  "displayed_object_type_military_war"
    t.string   "displayed_object_type_science_and_technology"
    t.string   "displayed_object_type_other"
    t.string   "current_website"
    t.string   "accept_or_reject",                                default: "waiting"
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
  end

  create_table "unblock_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcome_emails", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
