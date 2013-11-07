class GoodFormsController < ApplicationController
	def index
		@teams = Team.search(params[:search])
		@leagues = League.search(params[:leagueSearch])
		@gamesForToday = Game.search()
	    #@numberOfTeams = Team.count
		#@numberOfLeagues = League.count
		#@NumberOfGames = Game.count
		#@numberOfStatistics = (Statistic.count * 30)
	end
	
	def show
		@team        = Team.find(params[:id])
		@games       = Game.where("team1 = ? OR team2 = ?", @team.id, @team.id) #Returns an array 
		@gamesSorted = @games.all(:order => "kodate DESC")
		#@statistics = Statistics.find_by_gameid(@game.first.team1.id) # find the statistics for the first game.
		@teamsInSameleague = Team.where("name = ?", @games.first.league.name)
		
		#Find the statistics for the games for the team with team.id (1) or team.id (2)
		#Then aggregate the stats and find averages.
		
		@totalHomeGoals            = 0
		@totalAwayGoals            = 0
		@totalHomeCorners          = 0
		@totalAwayCorners          = 0
		@totalHomeAttacks          = 0
		@totalAwayAttacks          = 0
		@totalHomeDangerousAttacks = 0
		@totalAwayDangerousAttacks = 0
		@totalHomeShotsOnTarget    = 0
		@totalAwayShotsOnTarget    = 0
		@totalHomeShotsOffTarget   = 0
		@totalAwayShotsOffTarget   = 0

		@homeGames = Game.where("team1 = ?", @team.id)
		
		@homeGames.each do |hgame|
			@homeStats = Statistic.where("game_id = ?", hgame.id)
			
			if !@homeStats.empty?
				@totalHomeGoals            += @homeStats.last.hg
				@totalHomeCorners          += @homeStats.last.hco
				@totalHomeAttacks          += @homeStats.last.ha
				@totalHomeDangerousAttacks += @homeStats.last.hda
				@totalHomeShotsOnTarget    += @homeStats.last.hsont
				@totalHomeShotsOffTarget   += @homeStats.last.hsofft
			end
		end

		@awayGames = Game.where("team2 = ?", @team.id)
		
		@awayGames.each do |agame|
			@awayStats = Statistic.where("game_id = ?", agame.id)
			
			if !@awayStats.empty?
				@totalAwayGoals            += @awayStats.last.ag
				@totalAwayCorners          += @awayStats.last.aco
				@totalAwayAttacks          += @awayStats.last.aa
				@totalAwayDangerousAttacks += @awayStats.last.ada
				@totalAwayShotsOnTarget    += @awayStats.last.asont
				@totalAwayShotsOffTarget   += @awayStats.last.asofft
			end
		end
		
		@homeGamesPlayed = @homeGames.size
		@awayGamesPlayed = @awayGames.size
		
		@totalCorners                = @totalHomeCorners+@totalAwayCorners
		
		@averageHomeGoals            = @totalHomeGoals.to_f/@homeGamesPlayed
		@averageAwayGoals            = @totalAwayGoals.to_f/@awayGamesPlayed
		
		@averageHomeCorners          = @totalHomeCorners.to_f/@homeGamesPlayed
		@averageAwayCorners          = @totalAwayCorners.to_f/@awayGamesPlayed

		@averageHomeAttacks          = @totalHomeAttacks.to_f/@homeGamesPlayed
		@averageAwayAttacks          = @totalAwayAttacks.to_f/@awayGamesPlayed

		@averageHomeDangerousAttacks = @totalHomeDangerousAttacks.to_f/@homeGamesPlayed
		@averageAwayDangerousAttacks = @totalAwayDangerousAttacks.to_f/@awayGamesPlayed

		@averageHomeShotsOnTarget    = @totalHomeShotsOnTarget.to_f/@homeGamesPlayed
		@averageAwayShotsOnTarget    = @totalAwayShotsOnTarget.to_f/@awayGamesPlayed
		
		@averageHomeShotsOffTarget   = @totalHomeShotsOffTarget.to_f/@homeGamesPlayed
		@averageAwayShotsOffTarget   = @totalAwayShotsOffTarget.to_f/@awayGamesPlayed
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
