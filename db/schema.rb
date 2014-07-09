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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140709113920) do

  create_table "leads_as", :force => true do |t|
    t.string   "Address1"
    t.string   "Address2"
    t.string   "Address3"
    t.string   "Address4"
    t.string   "FirstName"
    t.string   "HomePhone"
    t.string   "LastName"
    t.string   "Postcode"
    t.string   "Price"
    t.string   "Title"
    t.string   "Address5"
    t.string   "Address6"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "Distance"
  end

  create_table "leads_bs", :force => true do |t|
    t.string   "Address1"
    t.string   "Address2"
    t.string   "Address3"
    t.string   "Address4"
    t.string   "FirstName"
    t.string   "HomePhone"
    t.string   "LastName"
    t.string   "Postcode"
    t.string   "Price"
    t.string   "Title"
    t.string   "Address5"
    t.string   "Address6"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmap"
    t.string   "Distance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "postcode"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "gmaps"
  end

end
