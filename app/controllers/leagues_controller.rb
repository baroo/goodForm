class LeaguesController < ApplicationController
	def index

	end
	
	def show
		@league = League.where("id = ?", params[:goodForm_id])
		@teams = @league.first.teams
		#@statistics = Statistic.where("game_id = ?", params[:goodForm_id]).reverse_order #Returns an array)
		#@team        = Team.find(params[:id])
		#@league     = League.find()
		#@games       = Game.where("team1 = ? OR team2 = ?", @team.id, @team.id) #Returns an array 
		#@gamesSorted = @games.all(:order => "kodate DESC")
		#@statistics = Statistics.find_by_gameid(@game.first.hometeamid) # find the statistics for the first game.
		#@teamsInSameleague = Team.where("name = ?", @games.first.league.name)
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
