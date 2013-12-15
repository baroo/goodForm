class AlterBotsTable < ActiveRecord::Migration
  def up
      remove_column :bots :id
      remove_column :bots :name
  end

  def down
      add_column :bots :id
      add_column :bots :name
  end
end
