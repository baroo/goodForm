class League < ActiveRecord::Base
  attr_accessible :name
  has_many :games
  has_many :teams, :through => :games, :source => :team1
  has_many :teams, :through => :games, :source => :team2
end
