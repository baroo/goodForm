class DropColumnsFromBotsTable < ActiveRecord::Migration
   def up
      remove_column :bots, :name
    end
    def down
      add_column :bots, :name, :string
  end
end
