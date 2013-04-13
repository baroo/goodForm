class AmendGames < ActiveRecord::Migration
  def up
      create_table :games do |t|
      t.integer :leagueId
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
