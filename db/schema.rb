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

ActiveRecord::Schema.define(version: 20170430201413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_favorites_on_item_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "condition"
    t.boolean  "is_available"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "group"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "experiencecategory"
    t.integer  "servicecategory"
    t.integer  "itemcategory"
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "offers", force: :cascade do |t|
    t.text     "message"
    t.boolean  "is_completed"
    t.boolean  "is_accepted"
    t.integer  "requested_item_id"
    t.integer  "offered_item_id"
    t.integer  "receiver_id"
    t.integer  "initiator_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["initiator_id"], name: "index_offers_on_initiator_id", using: :btree
    t.index ["offered_item_id"], name: "index_offers_on_offered_item_id", using: :btree
    t.index ["receiver_id"], name: "index_offers_on_receiver_id", using: :btree
    t.index ["requested_item_id"], name: "index_offers_on_requested_item_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role"
    t.integer  "location"
    t.integer  "rating"
    t.integer  "rating_count"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image"
    t.string   "background_color"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_foreign_key "favorites", "items"
  add_foreign_key "favorites", "users"
  add_foreign_key "items", "users"
end
