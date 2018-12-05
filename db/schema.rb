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

ActiveRecord::Schema.define(version: 20181205020412) do

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "clubs", force: :cascade do |t|
    t.string   "club_name"
    t.string   "club_leader"
    t.string   "contact_number"
    t.string   "contact_email"
    t.string   "meeting_time"
    t.string   "meeting_address"
    t.string   "club_logo_file_name"
    t.string   "club_logo_content_type"
    t.integer  "club_logo_file_size"
    t.datetime "club_logo_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "bg_image_file_name"
    t.string   "bg_image_content_type"
    t.integer  "bg_image_file_size"
    t.datetime "bg_image_updated_at"
    t.integer  "bg_position",                     default: 100
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "donate_link"
    t.string   "charity_number"
    t.string   "events_banner_img_file_name"
    t.string   "events_banner_img_content_type"
    t.integer  "events_banner_img_file_size"
    t.datetime "events_banner_img_updated_at"
    t.string   "news_banner_img_file_name"
    t.string   "news_banner_img_content_type"
    t.integer  "news_banner_img_file_size"
    t.datetime "news_banner_img_updated_at"
    t.string   "gallery_banner_img_file_name"
    t.string   "gallery_banner_img_content_type"
    t.integer  "gallery_banner_img_file_size"
    t.datetime "gallery_banner_img_updated_at"
    t.string   "about_banner_img_file_name"
    t.string   "about_banner_img_content_type"
    t.integer  "about_banner_img_file_size"
    t.datetime "about_banner_img_updated_at"
    t.string   "contact_banner_img_file_name"
    t.string   "contact_banner_img_content_type"
    t.integer  "contact_banner_img_file_size"
    t.datetime "contact_banner_img_updated_at"
    t.string   "postal_address"
    t.string   "policies_file_name"
    t.string   "policies_content_type"
    t.integer  "policies_file_size"
    t.datetime "policies_updated_at"
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cover"
    t.string   "token"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "published",   default: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "content_one"
    t.text     "content_two"
    t.text     "content_three"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "site_page"
    t.integer  "admin_id"
    t.boolean  "published",              default: false
    t.datetime "date_of_event"
    t.string   "img_one_file_name"
    t.string   "img_one_content_type"
    t.integer  "img_one_file_size"
    t.datetime "img_one_updated_at"
    t.string   "img_two_file_name"
    t.string   "img_two_content_type"
    t.integer  "img_two_file_size"
    t.datetime "img_two_updated_at"
    t.string   "img_one_format"
    t.string   "img_two_format"
    t.time     "time_of_event"
    t.string   "links_position"
    t.string   "link_text_one"
    t.string   "link_url_one"
    t.string   "link_text_two"
    t.string   "link_url_two"
    t.string   "link_text_three"
    t.string   "link_url_three"
    t.string   "img_three_file_name"
    t.string   "img_three_content_type"
    t.integer  "img_three_file_size"
    t.datetime "img_three_updated_at"
    t.string   "img_three_format"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "description"
    t.string   "image"
    t.integer  "gallery_id"
    t.string   "gallery_token"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
