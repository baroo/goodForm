class LeaguesController < ApplicationController
	def index
		@league = League.where("id = ?", params[:goodForm_id])
		@tempTeams = @league.first.teams
		@sortedTeams = @tempTeams.sort_by{ | teamName | teamName.name }
		@teams = @sortedTeams.uniq
	end
	
	def show
		@league = League.where("id = ?", params[:goodForm_id])
		@tempTeams = @league.first.teams
		@sortedTeams = @tempTeams.sort_by{ | teamName | teamName.name }
		@teams = @sortedTeams.uniq
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
