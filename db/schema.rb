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

ActiveRecord::Schema.define(version: 20140425133511) do

  create_table "assignees", force: true do |t|
    t.string "name"
    t.string "department"
    t.string "avatar"
  end

  create_table "to_dos", force: true do |t|
    t.string  "task"
    t.date    "deadline"
    t.string  "department"
    t.integer "assignee_id"
    t.boolean "completed",   default: false
    t.string  "file"
  end

end
