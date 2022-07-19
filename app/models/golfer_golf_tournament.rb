class GolferGolfTournament < ApplicationRecord
  belongs_to :golf_tournament
  belongs_to :golfer
end
