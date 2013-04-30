class CreateLeagueAssociations < ActiveRecord::Migration
  def up
    create_table :league_associations do |t|
		t.integer :league_id
		t.string  :name
		t.timestamps
    end
  end
  
  def down
	drop_table :league_associations
  end
end
