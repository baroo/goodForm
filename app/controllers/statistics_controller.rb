class StatisticsController < ApplicationController
	def index
			#param1 = params[:goodForm_id]
			#render :text => param1.inspect	
			@statistics = Statistic.where("game_id = ?", params[:goodForm_id]).reverse_order #Returns an array)
			
			if @statistics
  			@game = Game.where("id = ?", @statistics.first.game_id)
  			
  			if @game
    			@team1 = @game.first.team1.name
    			@team2 = @game.first.team2.name
        end
    			@finalStats = @statistics.first
    	
    			@homeGoals = @finalStats.hg
    			@awayGoals = @finalStats.ag
    			
    			@totalAttacks = (@finalStats.ha.to_i + @finalStats.aa.to_i)
    			@finalHomeAttacksAsPercentage = (@finalStats.ha.to_f / @totalAttacks) * 100
    			@finalAwayAttacksAsPercentage = (@finalStats.aa.to_f / @totalAttacks) * 100
    	
    			@totalDangerousAttacks = (@finalStats.hda.to_i + @finalStats.ada.to_i)
    			@finalHomeDangerousAttacksAsPercentage = (@finalStats.hda.to_f / @totalDangerousAttacks) * 100
    			@finalAwayDangerousAttacksAsPercentage = (@finalStats.ada.to_f / @totalDangerousAttacks) * 100
    			
    			@totalShotsOnTarget = (@finalStats.hsont.to_i + @finalStats.asont.to_i)
    			@finalHomeShotsOnTargetAsPercentage = (@finalStats.hsont.to_f / @totalShotsOnTarget) * 100
    			@finalAwayShotsOnTargetAsPercentage = (@finalStats.asont.to_f / @totalShotsOnTarget) * 100
    			
    			@totalShotsOffTarget = (@finalStats.hsofft.to_i + @finalStats.asofft.to_i)
    			@finalHomeShotsOffTargetAsPercentage = (@finalStats.hsofft.to_f / @totalShotsOffTarget) * 100
    			@finalAwayShotsOffTargetAsPercentage = (@finalStats.asofft.to_f / @totalShotsOffTarget) * 100
    			
    			@totalCorners = (@finalStats.hco.to_i + @finalStats.aco.to_i)
    			@finalHomeCornersAsPercentage = (@finalStats.hco.to_f / @totalCorners) * 100
    			@finalAwayCornersAsPercentage = (@finalStats.aco.to_f / @totalCorners) * 100
    			
    			@homeNegativeAttacks          = -@finalStats.ha
    			@homeNegativeDangerousAttacks = -@finalStats.hda
    			@homeNegativeShotsOnTarget    = -@finalStats.hsont
    			@homeNegativeShotsOffTarget   = -@finalStats.hsofft
    			@homeNegativeCorners          = -@finalStats.hco
			
			end
			
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
