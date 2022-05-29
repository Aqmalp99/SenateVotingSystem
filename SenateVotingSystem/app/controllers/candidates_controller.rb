class CandidatesController < ApplicationController
  def index
    redirect_to '/candidates/add'
  end

  def add
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.next_step
    render 'add'
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :surname, :party, :order)
  end

end
