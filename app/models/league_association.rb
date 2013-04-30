class LeagueAssociation < ActiveRecord::Base
  attr_accessible :name, :league_id
  has_one :league
end
