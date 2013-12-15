class DropColumnsFromBotsTable < ActiveRecord::Migration
  def change
        remove_column :bots :id
        remove_column :bots :name
  end
end
