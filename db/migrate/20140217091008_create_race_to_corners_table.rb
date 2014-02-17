class CreateRaceToCornersTable < ActiveRecord::Migration
  def up
   create_table :racetocorners do |t|
        t.string :idx
        t.string :game_id
        t.string :cornertarget
        t.string :homeprice
        t.string :awayprice
        t.string :neitherprice
        t.timestamps
	  end
  end

  def down
  drop_table :racetocorners
  end
end
