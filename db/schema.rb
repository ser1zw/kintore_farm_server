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

ActiveRecord::Schema.define(version: 20160917033846) do

  create_table "users", force: :cascade do |t|
    t.string  "login_id"
    t.string  "password"
    t.string  "name"
    t.integer "point",        default: 0
    t.integer "pushup_count", default: 0
    t.integer "situp_count",  default: 0
    t.integer "squat_count",  default: 0
    t.index ["login_id"], name: "index_users_on_login_id", unique: true
  end

end
