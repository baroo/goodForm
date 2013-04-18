class StatisticsController < ApplicationController
	def index
			#param1 = params[:goodForm_id]
			#render :text => param1.inspect	
			@statistics = Statistic.where("game_id = ?", params[:goodForm_id]).reverse_order #Returns an array)
			@game = Game.where("id = ?", @statistics.first.game_id)
			@team1 = @game.first.team1.name
			@team2 = @game.first.team2.name
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
