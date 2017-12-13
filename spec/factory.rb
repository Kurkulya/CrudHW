FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'
    lang 'en'
  end

  factory :task do
    name 'default task content'
    description 'sdasdasdsdsd'
    expiry '2017-08-13'
    importance 'high'
    is_done false
  end

end