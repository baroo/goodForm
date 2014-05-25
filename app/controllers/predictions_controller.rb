class PredictionsController < ApplicationController
	def index
	  @predictions = PredictionData.where("gameid = ?", params[:goodForm_id])
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