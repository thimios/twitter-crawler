# frozen_string_literal: true

FactoryBot.define do
  factory :scan do
    from { Faker::Time.backward(days: 5) }
    to { Faker::Time.backward(days: 1) }
    user_id { 'MyString' }
    receiver_email { 'MyString' }
  end
end
