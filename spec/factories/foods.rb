# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :food do
    sequence(:name) { |n| "Food product #{n}" }
    association :producer, factory: :organization
  end
end
