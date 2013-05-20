class Game < ActiveRecord::Base
  attr_accessible :league_id, :kodate, :team1, :team2
  
  belongs_to :league
  has_one :statistic
  has_one :team1, :class_name => "Team", :primary_key =>"team1", :foreign_key => "id"
  has_one :team2, :class_name => "Team", :primary_key =>"team2", :foreign_key => "id"
  
  #This needs sorting out with zones.
   def self.search()
		where(:kodate => (Time.zone.now - 2.hours)..Time.zone.now ).order('kodate DESC')
	end
end
