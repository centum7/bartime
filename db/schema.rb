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

ActiveRecord::Schema.define(version: 20151123144654) do

  create_table "open_times", force: true do |t|
    t.string   "shop_id"
    t.string   "sun_time"
    t.string   "mon_time"
    t.string   "tue_time"
    t.string   "web_time"
    t.string   "thu_time"
    t.string   "fri_time"
    t.string   "sta_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opentimes", force: true do |t|
    t.string   "sun_time"
    t.string   "mon_time"
    t.string   "tue_time"
    t.string   "web_time"
    t.string   "thu_time"
    t.string   "fri_time"
    t.string   "sta_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "url_home"
    t.string   "url_outsite"
    t.string   "memo"
    t.string   "shop_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
