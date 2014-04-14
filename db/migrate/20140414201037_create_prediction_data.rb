class CreatePredictionData < ActiveRecord::Migration
  def change
    create_table :prediction_data do |t|
      t.integer  :gameId
      t.float    :goalsWinHome
      t.float    :goalsWinAway
      t.integer  :goalsLikelyScoreHome
      t.integer  :goalsLikelyScoreAway
      t.float    :goalsLikelyProbability
      t.float    :cornersWinHome
      t.float    :cornersWinAway
      t.integer  :cornersLikelyScoreHome
      t.integer  :cornersLikelyScoreAway
      t.float    :cornersLikelyProbability
      t.timestamps
    end
  end
end
