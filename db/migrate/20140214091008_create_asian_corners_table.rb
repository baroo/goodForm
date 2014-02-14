class CreateAsianCornersTable < ActiveRecord::Migration
  def up
   create_table :asiancorners do |t|
        t.string :idx
        t.string :game_id
        t.string :cornerline
        t.string :homeprice
        t.string :awayprice
        t.timestamps
	  end
  end

  def down
  drop_table :asiancorners
  end
end
