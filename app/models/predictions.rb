class Predictions < ActiveRecord::Base
  attr_accessible :cornersLikelyProbability, :cornersLikelyScoreAway, :cornersLikelyScoreHome, :cornersWinAway, :cornersWinHome, :gameId, :goalsLikelyProbability, :goalsLikelyScoreAway, :goalsLikelyScoreHome, :goalsWinAway, :goalsWinHome
end
