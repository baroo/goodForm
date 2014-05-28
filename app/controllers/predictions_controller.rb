class PredictionsController < ApplicationController
	def index
	  @predictions = PredictionData.where("gameid = ?", params[:goodForm_id])
	  @game = Game.where("id = ?", params[:goodForm_id]).first
	  @homeTeam = @game.team1.name
	  @awayTeam = @game.team2.name
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