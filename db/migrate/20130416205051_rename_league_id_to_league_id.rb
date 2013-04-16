class RenameLeagueIdToLeagueId < ActiveRecord::Migration
  def up
  rename_column :games, :league_Id, :league_id
  end

  def down
  end
end
