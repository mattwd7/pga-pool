class Golfer < ApplicationRecord
  has_many :golfer_golf_tournaments, dependent: :destroy
  has_many :golf_tournaments, through: :golfer_golf_tournaments
end
