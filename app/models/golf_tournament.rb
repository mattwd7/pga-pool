class GolfTournament < ApplicationRecord
  has_many :golfer_golf_tournaments, dependent: :destroy
  has_many :golfers, through: :golfer_golf_tournaments
end
