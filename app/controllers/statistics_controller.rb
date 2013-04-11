class StatisticsController < ApplicationController
	def index
			#param1 = params[:goodForm_id]
			#render :text => param1.inspect	
			@statistics = Statistic.where("game_id = ?", params[:goodForm_id]) #Returns an array)
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
