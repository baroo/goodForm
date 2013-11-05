class AddIndexes < ActiveRecord::Migration
  def up
    add_index :statistics, :game_id
    add_index :teams, :name
    add_index :games, [:league_id, :team1, :team2]
  end

  def down
  end
end
