class GoodFormsController < ApplicationController

	def index
		@teams = Team.search(params[:search])
	end
	
	def show
		@team = Team.find(params[:id])
		@game = Game.find(:all, :awayTeamId => @team.id)
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
