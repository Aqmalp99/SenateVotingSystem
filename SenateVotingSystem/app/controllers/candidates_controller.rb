class CandidatesController < ApplicationController
  def index
    redirect_to '/candidates/add'
  end

  def add
    session[:candidate_params] ||= {}
    @candidate = Candidate.new
    @candidate.current_step = session[:candidate_step]
  end

  def create
    session[:candidate_params].deep_merge!(candidate_params) if candidate_params
    @candidate = Candidate.new(candidate_params)
    @candidate.current_step = session[:candidate_step]
    @candidate.next_step
    session[:candidate_step] = @candidate.current_step
    @other_candidates = Candidate.where('party = ?', @candidate.party) if session[:candidate_step] == 'order'
    render 'add'
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :surname, :party, :order)
  end

end
