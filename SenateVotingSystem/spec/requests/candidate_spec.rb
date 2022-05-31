require 'rails_helper'

RSpec.describe 'Candidates', type: :request do
  describe 'GET /index' do
    it 'redirects to the add page' do
      get '/candidates'
      expect(response).to redirect_to('/candidates/add')
    end
  end

  describe 'GET /add' do
    it 'should render the add candidate form' do
      get '/candidates/add'
      expect(response).to have_http_status(200)
    end
  end
end
