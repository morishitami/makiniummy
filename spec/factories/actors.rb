FactoryBot.define do
  factory :actor do
    comment              {'test'}
    association :user

    after(:build) do |actor|
      actor.image.attach(io: File.open('public/images/test-image.jpeg'), filename: 'test-image.jpeg')
    end
  end
end