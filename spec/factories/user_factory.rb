FactoryGirl.define do
  factory :user do 
    email                  "example@example.com"
    password               "example123456"
    password_confirmation  "example123456"
  end
end