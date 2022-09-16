FactoryBot.define do 
  factory :omniauth do 
    Faker::Omniauth.google
  end
end