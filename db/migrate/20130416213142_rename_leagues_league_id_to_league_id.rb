class RenameLeaguesLeagueIdToLeagueId < ActiveRecord::Migration
  def up
  rename_column :leagues, :league_Id, :league_id
  end

  def down
  end
end
