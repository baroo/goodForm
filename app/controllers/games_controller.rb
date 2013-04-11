class GamesController < ApplicationController
	def index
			@games = Game.where("team1 = ?", 1 ) #Returns an array
	end
	
	def show
	
	
	
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
