# frozen_string_literal: true

module Scans
  class Create < ActiveInteraction::Base
    time :from
    time :to
    string :user_id
    string :receiver_email

    validates :from, :to, :user_id, :receiver_email, presence: true

    def to_model
      Scan.new
    end

    def execute
      scan = Scan.new(inputs)
      errors.merge!(scan.errors) unless scan.save

      scan
    end
  end
end
