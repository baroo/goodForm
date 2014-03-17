class CreateFullTimePriceTable < ActiveRecord::Migration
  def up
   create_table :fulltimeprice do |t|
        t.string :idx
        t.string :game_id
        t.string :homeprice
        t.string :drawprice
        t.string :awayprice
        t.timestamps
	  end
  end

  def down
  drop_table :fulltimeprice
  end
end
