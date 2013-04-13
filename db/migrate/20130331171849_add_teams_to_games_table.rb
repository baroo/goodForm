class AddTeamsToGamesTable < ActiveRecord::Migration
  def up
	rename_column :games, :homeTeamId, :team1
	rename_column :games, :awayTeamId, :team2
  end
    def down
	rename_column :games, :team1, :homeTeamId
	rename_column :games, :team2, :awayTeamId
  end
end
