# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_034244) do

  create_table "class_assignments", force: :cascade do |t|
    t.string "course"
    t.string "room_number"
    t.integer "Professor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Professor_id"], name: "index_class_assignments_on_Professor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "section"
    t.string "course_name"
    t.integer "ClassAssignment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ClassAssignment_id"], name: "index_courses_on_ClassAssignment_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "room_number"
    t.string "building"
    t.integer "Professor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Professor_id"], name: "index_offices_on_Professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "course"
    t.string "string"
    t.string "office"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "class_assignments", "Professors"
  add_foreign_key "courses", "ClassAssignments"
  add_foreign_key "offices", "Professors"
end
