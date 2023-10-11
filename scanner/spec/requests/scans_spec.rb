# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Scans', type: :request do
  describe 'GET /' do
    let!(:scans) { FactoryBot.create_list(:scan, 3) }

    it 'returns http success' do
      get '/'

      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)

      scans.each do |scan|
        expect(response.body).to include(scan.from.to_s)
        expect(response.body).to include(scan.to.to_s)
        expect(response.body).to include(scan.user_id)
        expect(response.body).to include(scan.receiver_email)
      end
    end
  end
end
