class GoodFormsController < ApplicationController

	def index
		@teams = Team.search(params[:search])
	end
	
	def show
		@team = Team.find(params[:id])
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
