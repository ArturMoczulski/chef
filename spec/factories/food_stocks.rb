# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :food_stock do
    food nil
    user nil
    quantity 1
  end
end
