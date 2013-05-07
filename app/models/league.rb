class League < ActiveRecord::Base
  attr_accessible :name
  has_many :games
  has_many :teams, :through => :games, :source => :team1
  has_many :teams, :through => :games, :source => :team2
  has_many :league_associations
  
  def self.search(search)
	if search
		find(:all, :conditions => ['lower(name) LIKE ?', "%#{search.downcase}%"], :order => 'name ASC')
#	else
#	find(:all)
	end
  end
end

