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

ActiveRecord::Schema.define(version: 20171025004711) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "subject_id"
    t.string "title"
    t.string "press"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "name"
    t.string "dept"
    t.string "activities"
    t.string "destination"
    t.string "record_1st"
    t.string "record_2nd"
    t.string "record_3rd"
    t.string "record_4th"
    t.text "advise"
    t.text "comment"
    t.text "motivation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "univ_id"
    t.string "title"
    t.text "study_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timelineitems", force: :cascade do |t|
    t.integer "episode_id"
    t.string "grade"
    t.string "period"
    t.text "content"
    t.string "studying_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timelines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "univs", force: :cascade do |t|
    t.integer "episode_id"
    t.string "name"
    t.string "dept"
    t.string "admission_method"
    t.string "result"
    t.text "exam_info"
    t.text "interview_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
