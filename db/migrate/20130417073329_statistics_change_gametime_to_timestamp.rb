class StatisticsChangeGametimeToTimestamp < ActiveRecord::Migration
  def up
  change_column :statistics, :gametime, :timestamp
  end

  def down
  end
end
