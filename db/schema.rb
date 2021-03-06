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

ActiveRecord::Schema.define(version: 2020_10_27_121319) do

  create_table "favorites", force: :cascade do |t|
    t.integer "influencer_id"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_valid", default: true, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "influencers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "genre_id"
    t.string "name"
    t.string "kana_name"
    t.string "prefectures"
    t.string "account"
    t.string "sns_follower"
    t.string "profile_image_id"
    t.text "enthusiasm"
    t.boolean "is_valid", default: true, null: false
    t.index ["email"], name: "index_influencers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_influencers_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.integer "influencer_id_id"
    t.integer "owner_id_id"
    t.integer "room_id_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sent_user"
    t.index ["influencer_id_id"], name: "index_messages_on_influencer_id_id"
    t.index ["owner_id_id"], name: "index_messages_on_owner_id_id"
    t.index ["room_id_id"], name: "index_messages_on_room_id_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefectures"
    t.string "name"
    t.string "kana_name"
    t.string "account"
    t.string "residence"
    t.string "industry"
    t.string "profile_image_id"
    t.text "business_content"
    t.boolean "is_valid", default: true, null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "influencer_id_id"
    t.integer "owner_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["influencer_id_id"], name: "index_rooms_on_influencer_id_id"
    t.index ["owner_id_id"], name: "index_rooms_on_owner_id_id"
  end

end
