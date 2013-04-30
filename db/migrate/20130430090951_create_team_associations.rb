class CreateTeamAssociations < ActiveRecord::Migration
  def up
    create_table :team_associations do |t|
		t.integer :team_id
		t.string :name
		t.timestamps
    end
  end
  def down
	drop_table :team_associations
  end
end
