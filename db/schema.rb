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

ActiveRecord::Schema.define(:version => 20130331171849) do

  create_table "games", :force => true do |t|
    t.integer  "league_id"
    t.date     "koDate"
    t.integer  "team1"
    t.integer  "team2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statistics", :force => true do |t|
    t.integer  "gametime"
    t.datetime "seentime"
    t.integer  "game_id"
    t.integer  "hpn"
    t.integer  "hg"
    t.integer  "hpen"
    t.integer  "hsont"
    t.integer  "hsofft"
    t.integer  "hw"
    t.integer  "hco"
    t.integer  "hfk"
    t.integer  "ht"
    t.integer  "hyc"
    t.integer  "hrc"
    t.integer  "ha"
    t.integer  "hda"
    t.integer  "hbs"
    t.integer  "hcl"
    t.integer  "apn"
    t.integer  "ag"
    t.integer  "apen"
    t.integer  "asont"
    t.integer  "asofft"
    t.integer  "aw"
    t.integer  "aco"
    t.integer  "afk"
    t.integer  "at"
    t.integer  "ayc"
    t.integer  "arc"
    t.integer  "aa"
    t.integer  "ada"
    t.integer  "abs"
    t.integer  "acl"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
