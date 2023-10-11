# frozen_string_literal: true

FactoryBot.define do
  factory :scan do
    from { Faker::Time.between(from: DateTime.now, to: 5.days.ago) }
    to { Faker::Time.between(from: DateTime.now, to: 1.day.ago) }
    user_id { Faker::Internet.username }
    receiver_email { Faker::Internet.email }
  end
end
