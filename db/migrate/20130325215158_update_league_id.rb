class UpdateLeagueId < ActiveRecord::Migration
  def up
  rename_column :games, :leagueid, :league_id
  end

  def down
  end
end
