# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    voter nil
    votable nil
    amount 1
  end
end
