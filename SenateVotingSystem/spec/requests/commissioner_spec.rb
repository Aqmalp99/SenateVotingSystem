require 'rails_helper'

RSpec.describe "Commissioners", type: :request do
  describe "GET #voting-results for commissioner" do
    it 'should return hash table where key is the party name, and value is score' do
      get '/admin/voting-results'
      
    end
    it 'should return top 10 candidates in descending order' do
      
    end
  end
end
