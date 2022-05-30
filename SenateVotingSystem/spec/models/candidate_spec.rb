require 'rails_helper'

RSpec.describe Candidate, type: :model do
  it 'returns a valid record' do
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party', order: 4)).to be_valid
  end

  it 'is invalid without a first name' do
    expect(Candidate.create(first_name: nil, surname: 'Albanese', party: 'Australian Labor Party', order: 3)).not_to be_valid
  end

  it 'is invalid without a surname' do
    expect(Candidate.create(first_name: 'Anthony', surname: nil, party: 'Australian Labor Party', order: 2)).not_to be_valid
  end

  it 'is invalid without a party' do
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: nil, order: nil)).not_to be_valid
  end

  it 'is invalid without an order' do
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party', order: nil)).not_to be_valid
  end

  it 'is invalid when an order is not unique to a party' do
    Candidate.create(first_name: 'Kevin', surname: 'Rudd', party: 'Australian Labor Party', order: 1)
    expect(Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party', order: 1)).not_to be_valid
  end
end
