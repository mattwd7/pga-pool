FactoryBot.define do
  factory :golfer_golf_tournament do
    rank { Faker::Number.between(from: 1, to: 50) }
    payout { nil }
    association :golf_tournament
    association :golfer
  end
end
