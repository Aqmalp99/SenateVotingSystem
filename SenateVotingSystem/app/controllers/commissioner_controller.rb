class CommissionerController < ApplicationController
  def home_page
    allCandidates=Candidate.where(:excluded => false)
    parties=[]
    allCandidates.each do |candidate|
      unless parties.include? candidate.party
        parties.append(candidate.party)
      end
    end

    @party_votes=Hash.new
    parties.each do |party|
      @party_votes[party.to_sym]=Candidate.where(party: party).sum(:totalvotes).round(2)
    end

    @candidates=Candidate.where(:excluded => false).order(totalvotes: :desc).limit(10)
  end

  def recount
    @candidates=Candidate.order(:totalvotes)
  end

  def order_recount
    #pair = {candidate_id, exclude boolean}
    params.each do |pair|
      candidate_id = Integer(pair[0]) rescue -1
      next if candidate_id == -1
      candidate = Candidate.find(candidate_id)
      toExclude = pair[1] == "1" ? true : false
      candidate.update(excluded: toExclude)
    end

    User.update_all has_voted: false
    Candidate.update_all totalvotes: 0.0
    redirect_to admin_voting_results_path, notice: "Recount successfully ordered"
  end
end
