class AddTeamsToGamesTable < ActiveRecord::Migration
  def up
	rename_column :games, :hometeamid, :team1
	rename_column :games, :awayTeamId, :team2
  end
    def down
	rename_column :games, :team1, :hometeamid
	rename_column :games, :team2, :awayTeamId
  end
end
