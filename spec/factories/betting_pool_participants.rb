FactoryBot.define do
  factory :betting_pool_participant do
    full_name { Faker::Name.name }
    association :betting_pool
  end
end
