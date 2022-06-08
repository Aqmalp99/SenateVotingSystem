require 'rails_helper'

RSpec.describe 'Candidates', type: :request do

  describe 'GET /add' do
    it 'should render the add candidate form' do
      get '/admin/add-candidate'
      expect(response).to have_http_status(200)
    end
  end
end
