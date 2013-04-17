class CreateStatisticsTable < ActiveRecord::Migration
  def up
    create_table :statistics do |t|
	  t.integer :gametime
      t.timestamp :seentime
      t.integer :game_id
      t.integer :hpn
	  t.integer :hg
	  t.integer :hpen
	  t.integer :hsont
	  t.integer :hsofft
	  t.integer :hw
	  t.integer :hco
	  t.integer :hfk
	  t.integer :ht
	  t.integer :hyc
	  t.integer :hrc
	  t.integer :ha
	  t.integer :hda
	  t.integer :hbs
	  t.integer :hcl
	  t.integer :apn
	  t.integer :ag
	  t.integer :apen
	  t.integer :asont
	  t.integer :asofft
	  t.integer :aw
	  t.integer :aco
	  t.integer :afk
	  t.integer :at
	  t.integer :ayc
	  t.integer :arc
	  t.integer :aa
	  t.integer :ada	  
	  t.integer :abs
	  t.integer :acl
      t.timestamps
	  end
  end

  def down
	drop_table :statistics
  end
end