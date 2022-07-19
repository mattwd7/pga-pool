class BettingPool < ApplicationRecord
  belongs_to :golf_tournament
  belongs_to :commissioner, class_name: "User", foreign_key: :user_id, inverse_of: :betting_pools
end
