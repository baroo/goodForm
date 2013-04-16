class CreateLeaguesTable < ActiveRecord::Migration
  def up
      create_table :leagues do |t|
      t.string :league_Id
      t.string :name
      t.timestamps
  end

  def down
	drop_table :leagues
  end
end
