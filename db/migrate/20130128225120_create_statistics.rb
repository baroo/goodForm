class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :snapId
      t.date :gameTime
      t.integer :gameId
      t.integer :homePossession
      t.integer :homegoals
	  t.integer :HomePossession
	  t.integer :HomeGoals
	  t.integer :HomePenalties
	  t.integer :HomeShotsOnTarget
	  t.integer :HomeShotsOffTarget
	  t.integer :HomeWoodwork
	  t.integer :HomeCorners
	  t.integer :HomeFreeKicks
	  t.integer :HomeThrowIns
	  t.integer :HomeYellowCards
	  t.integer :HomeRedCards
	  t.integer :HomeAttacks
	  t.integer :HomeDangerousAttacks
	  t.integer :HomeBlockedShots
	  t.integer :HomeClearances
	  t.integer :AwayPossession
	  t.integer :AwayGoals
	  t.integer :AwayPenalties
	  t.integer :AwayShotsOnTarget
	  t.integer :AwayShotsOffTarget
	  t.integer :AwayWoodwork
	  t.integer :AwayCorners
	  t.integer :AwayFreeKicks
	  t.integer :AwayThrowIns
	  t.integer :AwayYellowCards
	  t.integer :AwayRedCards
	  t.integer :AwayAttacks	  
	  t.integer :AwayDangerousAttacks
	  t.integer :AwayBlockedShots
	  t.integer :AwayClearances
      t.timestamps
    end
  end
end
