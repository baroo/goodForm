class GoodFormsController < ApplicationController

	def index
	@teams = Team.search(params[:search])
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
