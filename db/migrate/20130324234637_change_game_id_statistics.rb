class ChangeGameIdStatistics < ActiveRecord::Migration
  def up
	rename_column :statistics, :game_id, :game_id
  end

  def down

  end
end
