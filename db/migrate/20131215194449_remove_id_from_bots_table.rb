class RemoveIdFromBotsTable < ActiveRecord::Migration
   def up
      remove_column :bots, :id
    end
    def down
      add_column :bots, :id, :integer
  end
end
