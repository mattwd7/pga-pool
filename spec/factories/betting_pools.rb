FactoryBot.define do
  factory :betting_pool do
    roster_size { Faker::Number.between(from: 3, to: 10) }
    association :commissioner, factory: :user
    association :golf_tournament
  end
end
