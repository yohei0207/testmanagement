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

ActiveRecord::Schema.define(version: 2020_08_26_182657) do

  create_table "shifts", force: :cascade do |t|
    t.string "mon3"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tue3"
    t.integer "wed3"
    t.integer "thu3"
    t.integer "fri3"
    t.integer "sat3"
    t.integer "mon4"
    t.integer "tue4"
    t.integer "wed4"
    t.integer "thu4"
    t.integer "fri4"
    t.integer "sat4"
    t.integer "mon5"
    t.integer "tue5"
    t.integer "wed5"
    t.integer "thu5"
    t.integer "fri5"
    t.integer "sat5"
    t.integer "mon6"
    t.integer "tue6"
    t.integer "wed6"
    t.integer "thu6"
    t.integer "fri6"
    t.integer "sat6"
    t.integer "mon7"
    t.integer "tue7"
    t.integer "wed7"
    t.integer "thu7"
    t.integer "fri7"
    t.integer "sat7"
    t.integer "mon8"
    t.integer "tue8"
    t.integer "wed8"
    t.integer "thu8"
    t.integer "fri8"
    t.integer "sat8"
    t.integer "mon9"
    t.integer "tue9"
    t.integer "wed9"
    t.integer "thu9"
    t.integer "fri9"
    t.integer "sat9"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
