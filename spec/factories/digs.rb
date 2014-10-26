# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dig do
    title "MyString"
    body "MyText"
    owner_id 1
  end
end
