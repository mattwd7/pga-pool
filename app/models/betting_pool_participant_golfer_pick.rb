class BettingPoolParticipantGolferPick < ApplicationRecord
  belongs_to :golfer
  belongs_to :betting_pool_participant
  belongs_to :betting_pool

  validates :golfer_id, uniqueness: {scope: [:betting_pool_id, :betting_pool_participant_id]}
end
