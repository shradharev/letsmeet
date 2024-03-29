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

ActiveRecord::Schema.define(:version => 20130424042426) do

  create_table "chats", :force => true do |t|
    t.string   "content"
    t.integer  "meetupdetail_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "meetup_id"
    t.integer  "user_id"
  end

  create_table "meetupdetails", :force => true do |t|
    t.integer  "meetup_id"
    t.integer  "user_id"
    t.string   "answer"
    t.string   "isowner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "meetwhen"
    t.string   "lat"
    t.string   "long"
  end

  create_table "meetups", :force => true do |t|
    t.string   "name"
    t.string   "where"
    t.string   "when"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "createdby"
    t.string   "placename"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.text     "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "pic"
  end

end
