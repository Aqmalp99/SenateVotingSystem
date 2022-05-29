class Candidate < ApplicationRecord
  attr_writer :current_step

  validates :first_name, presence: true
  validates :surname, presence: true
  validates :party, presence: true

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[personal order]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

end
