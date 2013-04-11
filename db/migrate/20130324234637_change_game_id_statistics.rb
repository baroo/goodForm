class ChangeGameIdStatistics < ActiveRecord::Migration
  def up
	rename_column :statistics, :gameid, :game_id
  end

  def down

  end
end
