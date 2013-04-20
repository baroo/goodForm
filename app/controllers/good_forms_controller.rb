class GoodFormsController < ApplicationController

	def index
		@teams = Team.search(params[:search])
		@statsRow = Statistic.find(:first, :order => 'hg DESC') #Get the whole Row with the largest HG value
		@maxHg = @statsRow.hg
		@ag = @statsRow.ag
		#@game = Game.where("game.id = ?", 1)
		#@team1 = @game.first.team1.name
		
		
	end
	
	def show
		@team        = Team.find(params[:id])
		#@league     = League.find()
		@games       = Game.where("team1 = ? OR team2 = ?", @team.id, @team.id) #Returns an array 
		@gamesSorted = @games.all(:order => "kodate DESC")
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
