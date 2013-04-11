class Statistics < ActiveRecord::Base
attr_accessible :gametime, :seentime, :game_id, :hpn, :hg, :hpen, :hsont, :hsofft, :hw, :hco, :hfk, :ht, :hyc, :hrc, :ha, :hda, :hbs, :hcl, :apn, :ag, :apen, :asont, :asofft, :aw, :aco, :afk, :at, :ayc, :arc, :aa, :ada, :abs, :acl
	belongs_to :game
end