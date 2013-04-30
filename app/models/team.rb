class Team < ActiveRecord::Base
  attr_accessible :name
  def self.search(search)
	if search
		find(:all, :conditions => ['lower(name) LIKE ?', "%#{search.downcase}%"])
	else
		find(:all)
	end
 end
   belongs_to :occurances_as_team1, :foreign_key => "team1", :class_name => "Game"
   belongs_to :occurances_as_team2, :foreign_key => "team2", :class_name => "Game"
   has_many :team_associations
end
