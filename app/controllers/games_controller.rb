class GamesController < ApplicationController
	def index
    respond_to do |format|
      format.html
      format.json { render json: GamesDatatable.new(view_context) }
    end
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
