# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scans::Create do
  describe '#execute' do
    subject(:create_scan) do
      described_class.run(
        from:,
        to:,
        user_id:,
        receiver_email:
      )
    end

    let(:attributes) { FactoryBot.attributes_for(:scan) }
    let(:from) { attributes[:from] }
    let(:to) { attributes[:to] }
    let(:user_id) { attributes[:user_id] }
    let(:receiver_email) { attributes[:receiver_email] }

    context 'with valid attributes' do
      it 'creates a new scan' do
        expect { create_scan }.to change(Scan, :count).by(1)
      end

      it 'returns a successful result' do
        expect(create_scan).to be_valid
      end

      it 'sets the attributes correctly' do
        scan = create_scan.result

        expect(scan.from).to be_within(1.second).of(from)
        expect(scan.to).to be_within(1.second).of(to)
        expect(scan.user_id).to eq(user_id)
        expect(scan.receiver_email).to eq(receiver_email)
      end
    end
  end
end
