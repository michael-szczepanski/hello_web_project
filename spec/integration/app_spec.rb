require 'spec_helper'
require 'rack/test'
require_relative '../../app'

RSpec.describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    it 'returns correctly for 1 name in argument' do
      response = get('/names?names=Mike')

      #p response
      expect(response.status).to eq(200)
      expect(response.body).to eq('Mike')
    end
  end
end

