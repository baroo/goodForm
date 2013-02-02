class Team < ActiveRecord::Base
  attr_accessible :name, :teamId

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
