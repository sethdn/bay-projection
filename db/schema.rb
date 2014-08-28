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

ActiveRecord::Schema.define(version: 20140820222008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.datetime "time"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "venue_id"
    t.string   "url"
    t.text     "show_notes"
    t.string   "show_credits"
    t.string   "admission"
    t.string   "location_notes"
  end

  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "events_series", id: false, force: true do |t|
    t.integer "event_id"
    t.integer "series_id"
  end

  create_table "series", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "venue_id"
    t.string   "url"
  end

  add_index "series", ["venue_id"], name: "index_series_on_venue_id", using: :btree

  create_table "stills", force: true do |t|
    t.text     "alt"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "event_id"
  end

  add_index "stills", ["event_id"], name: "index_stills_on_event_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "street_address"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbreviation"
  end

end
