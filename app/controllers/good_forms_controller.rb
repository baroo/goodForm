class GoodFormsController < ApplicationController

	def index
		@teams = Team.search(params[:search])
	end
	
	def show
		@team        = Team.find(params[:id])
		#@league     = League.find()
		@games       = Game.where("team1 = ?" OR "team2 = ?", @team.id) #Returns an array
		#@statistics = @game.first.statistics
		#@statistics = Statistics.find_by_gameid(@game.first.hometeamid) # find the statistics for the first game.
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
