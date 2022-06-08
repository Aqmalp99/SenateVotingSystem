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

    allCandidates=Candidate.where(:excluded => false).order(:order)
    @parties_candidates=Hash.new { |h, k| h[k] = [] }
    allCandidates.each do |candidate|
        @parties_candidates[candidate.party] << candidate
    end
  end

  def post_vote
    party_or_candidates_and_votes=Hash.new
    params.keys.each do |key|
      check_if_int=Integer(params[key]) rescue false
      if check_if_int
        party_or_candidates_and_votes[key]=params[key].to_i
      end
    end

    party_or_candidates_and_votes=party_or_candidates_and_votes.sort_by {|_key, value| value}
    counter=1
    party_or_candidates_and_votes.each do |preference|
      if preference[1] != counter
        return redirect_to voter_ballot_page_path, :notice => 'Invalid vote. Please Check your preferences'
      end
      counter+=1
    end



    if params[:commit] == "Submit Above The Line Vote"
      scoring=100
      if counter < 7
        return redirect_to voter_ballot_page_path, :notice => 'Invalid vote. You did not provide enough preferences'
      end
      party_or_candidates_and_votes.each do |party_preference|
        group=Candidate.where(:party => party_preference[0]).order(:order)
        group.each do |candidate|
          scoring= calculate_vote(candidate,scoring)
        end
      end
    else
      scoring=200
      if counter < 13
        return redirect_to voter_ballot_page_path, :notice => 'Invalid vote. You did not provide enough preferences'
      end
      party_or_candidates_and_votes.each do |candidateID|
        candidate=Candidate.where(:id =>candidateID[0])[0]
        scoring=calculate_vote(candidate,scoring)
      end
    end
    @current_user= User.where(:id => session[:id])[0]
    @current_user.update(:has_voted => true)
    redirect_to voter_home_page_path, :notice => 'Congratulations! You have successfully voted!'
  end

  private
  def calculate_vote(candidate, scoring)
    candidate_votes= candidate.totalvotes
    candidate_votes+= scoring
    candidate.update(:totalvotes => candidate_votes)
    scoring=(scoring * 0.75).round(2)

  end
end
