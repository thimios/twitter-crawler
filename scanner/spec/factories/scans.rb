# frozen_string_literal: true

FactoryBot.define do
  factory :scan do
    from { Faker::Time.between(from: 5.days.ago, to: 2.days.ago) }
    to { Faker::Time.between(from: 1.day.ago, to: DateTime.now) }
    user_id { Faker::Internet.username }
    receiver_email { Faker::Internet.email }
  end
end
