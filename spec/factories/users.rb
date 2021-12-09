FactoryBot.define do
  factory :user do
    code                  {'999'}
    name                  {'test'}
    stage_name            {'stage'}
    email                 {'test@test.com'}
    password              {'aa1100'}
    password_confirmation {password}
  end
end