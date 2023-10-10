# frozen_string_literal: true

class CreateScans < ActiveRecord::Migration[7.1]
  def change
    create_table :scans do |t|
      t.datetime :from
      t.datetime :to
      t.string :user_id
      t.string :receiver_email

      t.timestamps
    end
  end
end
