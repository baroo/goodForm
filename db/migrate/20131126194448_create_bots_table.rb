class CreateLeaguesTable < ActiveRecord::Migration
  def up
      create_table :bots do |t|
      t.string :bot_id
      t.string :name
      t.timestamps
	  end
  end

  def down
	drop_table :bots
  end
end
