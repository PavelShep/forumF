FactoryBot.define do
  factory :topic do
    title { "MyString" }
    subject { "MyText" }
    user_id { 1 }
  end

  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    nickname { Faker::Name.name }
  end

  factory :note do
    user
    status { %w(public private archived).sample }
    body { Faker::Lorem.paragraph }
    title { Faker::Lorem.sentence }
  end
end
