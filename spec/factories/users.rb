FactoryBot.define do
  factory :user do
    code                  {'999'}
    name                  {'test'}
    stage_name            {'stage'}
    email                 {Faker::Internet.free_email}
    password              {'aa1100'}
    password_confirmation {password}
  end
end