require 'rails_helper'

RSpec.describe Candidate, type: :model do
  it 'returns a valid record' do
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party')).to be_valid
  end

  it 'is invalid without a first name' do
    expect(Candidate.create(first_name: nil, surname: 'Albanese', party: 'Australian Labor Party')).not_to be_valid
  end

  it 'is invalid without a surname' do
    expect(Candidate.create(first_name: 'Anthony', surname: nil, party: 'Australian Labor Party')).not_to be_valid
  end

  it 'is invalid without a party' do
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: nil)).not_to be_valid
  end
end
