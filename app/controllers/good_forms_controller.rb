class GoodFormsController < ApplicationController

	def index
		
		@teams = Team.search(params[:search])
		@leagues = League.search(params[:leagueSearch])
		#@tempTeams = Team.search(params[:search])
		#@teams = @tempTeams.sort_by{ | teamName | teamName.name }
		@statsRow = Statistic.find(:first, :order => 'hg DESC') #Get the whole Row with the largest HG value
		@maxHg = @statsRow.hg
		@ag = @statsRow.ag
		@numberOfTeams = Team.count
		@numberOfLeagues = League.count
		@NumberOfGames = Game.count
		@numberOfStatistics = (Statistic.count * 30)
	end
	
	def show
		@team        = Team.find(params[:id])
		@games       = Game.where("team1 = ? OR team2 = ?", @team.id, @team.id) #Returns an array 
		@gamesSorted = @games.all(:order => "kodate DESC")
		#@statistics = Statistics.find_by_gameid(@game.first.team1.id) # find the statistics for the first game.
		@teamsInSameleague = Team.where("name = ?", @games.first.league.name)
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
