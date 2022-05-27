class Candidate < ApplicationRecord
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :party, presence: true
end
