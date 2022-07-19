FactoryBot.define do
  factory :golfer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    display_name { "#{first_name.first}. #{last_name}" }
    country { Faker::Address.country }
  end
end
