require 'rails_helper'

RSpec.describe "Commissioners", type: :request do
  before :each do
    Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party', order: 1)
  end
  describe "GET #voting-results for commissioner" do
    it 'should have an instance hash table where key is the party name, and value is score' do
      get '/admin/voting-results'
      scores= assigns(:party_votes)
      expect(scores.key?("Australian Labor Party".to_sym)).to eq(true)
      expect(scores["Australian Labor Party".to_sym]).to eq(0.0)
    end
    it 'should return top 10 candidates in descending order' do
      get '/admin/voting-results'
      topCandidates= assigns(:candidates)
      expect(topCandidates).to eq(Candidate.order(totalvotes: :desc).limit(10))
    end
  end
end
