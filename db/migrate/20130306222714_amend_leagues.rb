class AmendLeagues < ActiveRecord::Migration
  def up
      create_table :leagues do |t|
	  t.string :name
	  t.string :league_id
	  t.timestamps
	  end
  end

  def down
	  drop_table :leagues
  end
end
