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

  context "GET /names" do
    it 'returns correctly for 2 names in argument' do
      response = get('/names?names=Mike,Will')

      #p response
      expect(response.status).to eq(200)
      expect(response.body).to eq('Mike, Will')
    end
  end

  context "POST /sort-names" do
    it "returns one name without a comma" do
      response = post('/sort-names', names: 'Joe')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Joe')
    end

    it "returns a correctly alphabetised list" do
      response = post('/sort-names', names:'Joe,Alice,Zoe,Julia,Kieran')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end

  context "GET /hello" do
    it "contains the html code" do
      response = get('/hello', name:'Mike')

      expect(response.status).to eq 200
      expect(response.body).to include('<h1>Hello, Mike!</h1>')
    end
    
    it "changes the code based on name param" do
      response = get('/hello', name:'Evan')
      
      expect(response.status).to eq 200
      expect(response.body).to include('<h1>Hello, Evan!</h1>')
    end
  end
end

