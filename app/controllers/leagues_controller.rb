class LeaguesController < ApplicationController
	def index
	  respond_to do |format|
	    format.html {
        @league = League.where("id = ?", params[:goodForm_id])
            @tempTeams = @league.first.teams
            @sortedTeams = @tempTeams.sort_by{ | teamName | teamName.name }
            @teams = @sortedTeams.uniq  
	    }
	    format.json {render json: LeaguesDatatable.new(view_context) }
	  end
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
