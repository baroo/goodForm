class LeaguesController < ApplicationController
	def index

	end
	
	def show
		@league = League.where("id = ?", params[:goodForm_id])
		@teams = @league.first.teams
		#@teams = @tempTeams.sort_by{ | teamName | teamName.name }
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
