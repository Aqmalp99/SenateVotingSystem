class CandidatesController < ApplicationController
  def index
    redirect_to '/candidates/add'
  end

  def add
    session[:candidate_params] ||= {}
    @candidate = Candidate.new(session[:candidate_params])
    @other_candidates = Candidate.where('party = ?', @candidate.party) if session[:candidate_step] == 'order'
    @candidate.current_step = session[:candidate_step]
  end

  def create
    session[:candidate_params].deep_merge!(candidate_params) if candidate_params
    @candidate = Candidate.new(session[:candidate_params])
    @candidate.current_step = session[:candidate_step]

    if @candidate.last_step?
      @candidate.totalvotes = 0.0
      @candidate.excluded = false
      flash[:notice] = @candidate.save ? 'Candidate added successfully' : 'Error adding candidate. Check Order'
    else
      @candidate.next_step
    end

    session[:candidate_step] = @candidate.current_step
    @other_candidates = Candidate.where('party = ?', @candidate.party) if session[:candidate_step] == 'order'

    if @candidate.new_record?
      render 'add'
    else
      session[:candidate_params] = nil
      session[:candidate_step] = nil
      redirect_to add_candidates_path
    end

  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :surname, :party, :order)
  end

end
