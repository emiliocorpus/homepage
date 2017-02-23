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

ActiveRecord::Schema.define(version: 20170223223343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_tags", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "article_tags", ["article_id"], name: "index_article_tags_on_article_id", using: :btree
  add_index "article_tags", ["tag_id"], name: "index_article_tags_on_tag_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "comment_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "comment_anc_desc_idx", unique: true, using: :btree
  add_index "comment_hierarchies", ["descendant_id"], name: "comment_desc_idx", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.text     "content"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "parent_id"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "project_skills", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "project_skills", ["project_id"], name: "index_project_skills_on_project_id", using: :btree
  add_index "project_skills", ["skill_id"], name: "index_project_skills_on_skill_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "pic_url"
    t.string   "web_url"
    t.string   "github_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reactions", force: :cascade do |t|
    t.integer  "category"
    t.integer  "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reactions", ["comment_id"], name: "index_reactions_on_comment_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "article_tags", "articles"
  add_foreign_key "article_tags", "tags"
  add_foreign_key "comments", "articles"
  add_foreign_key "project_skills", "projects"
  add_foreign_key "project_skills", "skills"
  add_foreign_key "reactions", "comments"
end
