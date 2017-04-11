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

ActiveRecord::Schema.define(version: 20170410132934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_books", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "author_books", ["author_id"], name: "index_author_books_on_author_id", using: :btree
  add_index "author_books", ["book_id"], name: "index_author_books_on_book_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "Name"
    t.string   "Address"
    t.string   "Email"
    t.boolean  "active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "no_of_books_published"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "name"
    t.string   "author"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id", using: :btree

  add_foreign_key "author_books", "authors"
  add_foreign_key "author_books", "books"
end
