FactoryGirl.define do
  factory :comment do
    message "Great food"
    rating '3_stars'
    association :user
    association :place
  end
end

FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "melanieemailtest#{n}@gmail.com"
    end
    password "omglolhahaha"
    password_confirmation "omglolhahaha"
  end
end

FactoryGirl.define do
  factory :place do
    name "Charlie's noodles"
    address "30 Main St."
    description "delicious soups"
    latitude(42.3631519)
    longitude(-71.056098)
    association :user
  end
end

