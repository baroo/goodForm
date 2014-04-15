class FixPredictionDataColumnNames < ActiveRecord::Migration
  def change
    change_table :prediction_data do |t|
      t.rename :gameId, :gameid
      t.rename :goalsWinHome, :goalswinhome
      t.rename :goalsWinAway,  :goalswinaway
      t.rename :goalsLikelyScoreHome, :goalslikelyscorehome
      t.rename :goalsLikelyScoreAway, :goalslikelyscoreaway
      t.rename :goalsLikelyProbability, :goalslikelyrobability
      t.rename :cornersWinHome, :cornerswinhome
      t.rename :cornersWinAway, :cornerswinaway
      t.rename :cornersLikelyScoreHome, :cornerslikelyscorehome
      t.rename :cornersLikelyScoreAway, :cornerslikelyscoreaway
      t.rename :cornersLikelyProbability, :cornerslikelyprobability
    end
  end
end