class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :snapId
      t.date :gameTime
      t.integer :gameId
      t.integer :homePossession
      t.integer :homegoals

      t.timestamps
    end
  end
end
