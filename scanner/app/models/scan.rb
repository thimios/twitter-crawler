# frozen_string_literal: true

class Scan < ApplicationRecord
  validates :from, presence: true
  validates :to, presence: true, comparison: { greater_than: :from }
  validates :user_id, presence: true
  validates :receiver_email, presence: true
end
