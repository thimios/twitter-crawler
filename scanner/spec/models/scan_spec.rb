# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scan, type: :model do
  it 'is valid with valid attributes' do
    expect(FactoryBot.build(:scan)).to be_valid
  end

  it 'is not valid without a from' do
    expect(FactoryBot.build(:scan, from: nil)).not_to be_valid
  end

  it 'is not valid without a to' do
    expect(FactoryBot.build(:scan, to: nil)).not_to be_valid
  end

  it 'is not valid with a from later than the to' do
    expect(FactoryBot.build(:scan, from: Faker::Time.backward(days: 1),
                                   to: Faker::Time.backward(days: 3))).not_to be_valid
  end

  it 'is not valid without a user_id' do
    expect(FactoryBot.build(:scan, user_id: nil)).not_to be_valid
  end

  it 'is not valid without an email' do
    expect(FactoryBot.build(:scan, receiver_email: nil)).not_to be_valid
  end
end
