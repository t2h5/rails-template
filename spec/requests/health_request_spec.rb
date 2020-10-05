# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Healths', type: :request do
  describe '/health' do
    it do
      get health_path
      expect(response).to have_http_status(:ok)
    end
  end
end
