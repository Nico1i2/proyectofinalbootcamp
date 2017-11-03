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

ActiveRecord::Schema.define(version: 20171026024418) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.string "brand_description"
    t.string "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "briefs", force: :cascade do |t|
    t.string "age"
    t.string "location"
    t.string "social_class"
    t.integer "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.string "client_description"
    t.string "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_components", force: :cascade do |t|
    t.string "media_type"
    t.string "media_subtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "owned_media", force: :cascade do |t|
    t.string "facebook_url"
    t.string "instagram_url"
    t.string "twitter_url"
    t.string "web_page_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_media", force: :cascade do |t|
    t.string "plan_media_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_lines", force: :cascade do |t|
    t.string "product_line_name"
    t.string "product_line_description"
    t.string "product_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.string "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
