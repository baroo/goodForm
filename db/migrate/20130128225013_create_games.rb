class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :gameId
      t.date :koDate
      t.integer :awayTeamId
      t.integer :awayTeamId

      t.timestamps
    end
  end
end
