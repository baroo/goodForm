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

ActiveRecord::Schema.define(:version => 20140415193253) do

  create_table "asiancorners", :force => true do |t|
    t.string   "idx"
    t.string   "game_id"
    t.string   "cornerline"
    t.string   "homeprice"
    t.string   "awayprice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bots", :id => false, :force => true do |t|
    t.string   "bot_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fulltimeprice", :force => true do |t|
    t.string   "idx"
    t.string   "game_id"
    t.string   "homeprice"
    t.string   "drawprice"
    t.string   "awayprice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.integer  "league_id"
    t.date     "kodate"
    t.integer  "team1"
    t.integer  "team2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "games", ["league_id", "team1", "team2"], :name => "index_games_on_league_id_and_team1_and_team2"

  create_table "league_associations", :force => true do |t|
    t.integer  "league_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prediction_data", :force => true do |t|
    t.integer  "gameid"
    t.float    "goalswinhome"
    t.float    "goalswinaway"
    t.integer  "goalslikelyscorehome"
    t.integer  "goalslikelyscoreaway"
    t.float    "goalslikelyrobability"
    t.float    "cornerswinhome"
    t.float    "cornerswinaway"
    t.integer  "cornerslikelyscorehome"
    t.integer  "cornerslikelyscoreaway"
    t.float    "cornerslikelyprobability"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "predictions", :force => true do |t|
    t.integer  "gameId"
    t.float    "goalsWinHome"
    t.float    "goalsWinAway"
    t.integer  "goalsLikelyScoreHome"
    t.integer  "goalsLikelyScoreAway"
    t.float    "goalsLikelyProbability"
    t.float    "cornersWinHome"
    t.float    "cornersWinAway"
    t.integer  "cornersLikelyScoreHome"
    t.integer  "cornersLikelyScoreAway"
    t.float    "cornersLikelyProbability"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "racetocorners", :force => true do |t|
    t.string   "idx"
    t.string   "game_id"
    t.string   "cornertarget"
    t.string   "homeprice"
    t.string   "awayprice"
    t.string   "neitherprice"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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

  add_index "statistics", ["game_id"], :name => "index_statistics_on_game_id"

  create_table "team_associations", :force => true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teams", ["name"], :name => "index_teams_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
