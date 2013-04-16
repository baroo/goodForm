class CreateGamesTable < ActiveRecord::Migration
  def up
      create_table :games do |t|
		t.integer :league_Id
		t.date :koDate
		t.integer :team1
		t.integer :team2
		t.timestamps
	  end
  end

  def down
	drop_table :games
  end
end
