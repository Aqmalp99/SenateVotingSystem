class Candidate < ApplicationRecord
  attr_writer :current_step

  validates :first_name, presence: true
  validates :surname, presence: true
  validates :party, presence: true
  validates :order, presence: true, uniqueness: { scope: :party }, numericality: { greater_than: 0 }

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[personal order]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

  def last_step?
    current_step == steps.last
  end

  def other_candidates
    Candidate.where('party = ?', party).order(:order)
  end
end
