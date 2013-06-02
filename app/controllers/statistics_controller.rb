class StatisticsController < ApplicationController
	def index
			#param1 = params[:goodForm_id]
			#render :text => param1.inspect	
			@statistics = Statistic.where("game_id = ?", params[:goodForm_id]).reverse_order #Returns an array)
			@game = Game.where("id = ?", @statistics.first.game_id)
			@team1 = @game.first.team1.name
			@team2 = @game.first.team2.name

			@finalStats = @statistics.first
			
			@homeGoals = @finalStats.hg
			@awayGoals = @finalStats.ag
			
			@totalAttacks = (@finalStats.ha + @finalStats.aa)
			@finalHomeAttacksAsPercentage = (@finalStats.ha.to_f / @totalAttacks) * 100
			@finalAwayAttacksAsPercentage = (@finalStats.aa.to_f / @totalAttacks) * 100
			
			@totalDangerousAttacks = (@finalStats.hda + @finalStats.ada)
			@finalHomeDangerousAttacksAsPercentage = (@finalStats.hda.to_f / @totalDangerousAttacks) * 100
			@finalAwayDangerousAttacksAsPercentage = (@finalStats.ada.to_f / @totalDangerousAttacks) * 100
			
			@totalShotsOnTarget = (@finalStats.hsont + @finalStats.asont)
			@finalHomeShotsOnTargetAsPercentage = (@finalStats.hsont.to_f / @totalShotsOnTarget) * 100
			@finalAwayShotsOnTargetAsPercentage = (@finalStats.asont.to_f / @totalShotsOnTarget) * 100
			
			@totalShotsOffTarget = (@finalStats.hsofft + @finalStats.asofft)
			@finalHomeShotsOffTargetAsPercentage = (@finalStats.hsofft.to_f / @totalShotsOffTarget) * 100
			@finalAwayShotsOffTargetAsPercentage = (@finalStats.asofft.to_f / @totalShotsOffTarget) * 100
			
			@totalCorners = (@finalStats.hco + @finalStats.aco)
			@finalHomeCornersAsPercentage = (@finalStats.hco.to_f / @totalCorners) * 100
			@finalAwayCornersAsPercentage = (@finalStats.aco.to_f / @totalCorners) * 100
			
			
			
			
	end
	
	def show

	end
	
	def new
	
	end
	
	def create
	
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def destroy
	
	end
end
