class CandidatesController < ApplicationController
  def index
    redirect_to '/candidates/add'
  end

  def add
    @candidate = Candidate.new
    print session[:candidate_step]
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.current_step = session[:candidate_step]
    @candidate.next_step
    session[:candidate_step] = @candidate.current_step
    render 'add'
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :surname, :party)
  end

end
