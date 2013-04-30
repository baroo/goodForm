class TeamAssociation < ActiveRecord::Base
  attr_accessible :name, :team_id
  has_one :team
end
