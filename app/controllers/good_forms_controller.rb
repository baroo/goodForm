class GoodFormsController < ApplicationController

	def index
		@teams = Team.search(params[:search])
		@leagues = League.search(params[:leagueSearch])
		@gamesForToday = Game.search()
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
		

		
		#Find the statistics for the games for the team with team.id (1) or team.id (2)
		#Then aggregate the stats and find averages.
		
		@totalHomeCorners = 0
		@totalAwayCorners = 0

		@homeGames = Game.where("team1 = ?", @team.id)
		
		@homeGames.each do |hgame|
			@homeCornerStats = Statistic.where("game_id = ?", hgame.id)
			
			if !@homeCornerStats.empty?
				@totalHomeCorners += @homeCornerStats.last.hco
			end
		end

		@awayGames = Game.where("team2 = ?", @team.id)
		
		@awayGames.each do |agame|
			@awayCornerStats = Statistic.where("game_id = ?", agame.id)
			
			if !@awayCornerStats.empty?
				@totalAwayCorners += @awayCornerStats.last.aco
			end
		end
		
		@totalCorners = @totalHomeCorners+@totalAwayCorners
		
		@averageHomeCorners = @totalHomeCorners/@homeGames.size
		@averageAwayCorners = @totalAwayCorners/@awayGames.size
			
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
