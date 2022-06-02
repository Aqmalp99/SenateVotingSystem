class BallotController < ApplicationController
  def ballot_page
    if session[:id]
      @current_user= User.where(:id => session[:id])[0]
      if @current_user.has_voted
        redirect_to voter_home_page_path
      end
    else
      redirect_to root_path
    end

    allCandidates=Candidate.all
    @parties_candidates=Hash.new { |h, k| h[k] = [] }
    allCandidates.each do |candidate|
        @parties_candidates[candidate.party] << candidate
    end

  end
end
