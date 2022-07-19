class GolferGolfTournament < ApplicationRecord
  belongs_to :golf_tournament
  belongs_to :golfer

  validates :golfer_id, uniqueness: {scope: :golf_tournament_id}
end
