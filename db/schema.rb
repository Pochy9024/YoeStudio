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

ActiveRecord::Schema.define(version: 20160712131109) do

  create_table "design_translations", force: :cascade do |t|
    t.integer  "design_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "technic"
  end

  add_index "design_translations", ["design_id"], name: "index_design_translations_on_design_id"
  add_index "design_translations", ["locale"], name: "index_design_translations_on_locale"

  create_table "designs", force: :cascade do |t|
    t.text     "title"
    t.string   "technic"
    t.string   "dimentions"
    t.integer  "year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
  end

  create_table "draw_translations", force: :cascade do |t|
    t.integer  "draw_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "technic"
  end

  add_index "draw_translations", ["draw_id"], name: "index_draw_translations_on_draw_id"
  add_index "draw_translations", ["locale"], name: "index_draw_translations_on_locale"

  create_table "draws", force: :cascade do |t|
    t.text     "title"
    t.string   "technic"
    t.string   "dimentions"
    t.integer  "year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
  end

  create_table "painting_translations", force: :cascade do |t|
    t.integer  "painting_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "technic"
  end

  add_index "painting_translations", ["locale"], name: "index_painting_translations_on_locale"
  add_index "painting_translations", ["painting_id"], name: "index_painting_translations_on_painting_id"

  create_table "paintings", force: :cascade do |t|
    t.text     "title"
    t.string   "technic"
    t.string   "dimentions"
    t.integer  "year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
  end

  create_table "photograph_translations", force: :cascade do |t|
    t.integer  "photograph_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "technic"
  end

  add_index "photograph_translations", ["locale"], name: "index_photograph_translations_on_locale"
  add_index "photograph_translations", ["photograph_id"], name: "index_photograph_translations_on_photograph_id"

  create_table "photographs", force: :cascade do |t|
    t.text     "title"
    t.string   "technic"
    t.string   "dimentions"
    t.integer  "year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
  end

  create_table "sculture_translations", force: :cascade do |t|
    t.integer  "sculture_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "technic"
  end

  add_index "sculture_translations", ["locale"], name: "index_sculture_translations_on_locale"
  add_index "sculture_translations", ["sculture_id"], name: "index_sculture_translations_on_sculture_id"

  create_table "scultures", force: :cascade do |t|
    t.text     "title"
    t.string   "technic"
    t.string   "dimentions"
    t.integer  "year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
  end

  create_table "slide_translations", force: :cascade do |t|
    t.integer  "slide_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "slide_translations", ["locale"], name: "index_slide_translations_on_locale"
  add_index "slide_translations", ["slide_id"], name: "index_slide_translations_on_slide_id"

  create_table "slides", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slide_file_name"
    t.string   "slide_content_type"
    t.integer  "slide_file_size"
    t.datetime "slide_updated_at"
  end

  create_table "testimonial_translations", force: :cascade do |t|
    t.integer  "testimonial_id", null: false
    t.string   "locale",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "testimonial_translations", ["locale"], name: "index_testimonial_translations_on_locale"
  add_index "testimonial_translations", ["testimonial_id"], name: "index_testimonial_translations_on_testimonial_id"

  create_table "testimonials", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
