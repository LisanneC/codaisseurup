FactoryGirl.define do
  factory :event do
    name              { Faker::Name.name }
    description       { Faker::Lorem.sentence(60) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          { Faker::Number.decimal(2) }
    includes_food     true
    includes_drinks   true
    starts_at         { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    ends_at           { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
