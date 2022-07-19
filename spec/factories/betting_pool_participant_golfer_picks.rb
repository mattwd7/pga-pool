FactoryBot.define do
  factory :betting_pool_participant_golfer_pick do
    association :golfer
    association :betting_pool_participant
    betting_pool { betting_pool_participant.betting_pool }
  end
end
