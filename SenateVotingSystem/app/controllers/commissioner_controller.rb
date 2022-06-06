class CommissionerController < ApplicationController
  def home_page
    allCandidates=Candidate.all
    parties=[]
    allCandidates.each do |candidate|
      unless parties.include? candidate.party
        parties.append(candidate.party)
      end
    end

    @party_votes=Hash.new
    parties.each do |party|
      @party_votes[party.to_sym]=Candidate.where(party: party).sum(:totalvotes)
    end

    @candidates=Candidate.order(totalvotes: :desc).limit(10)
  end

  def recount
    @candidates=Candidate.order(:totalvotes)
  end

  def order_recount
    params.each do |pair|
      if pair[1] == "1"
        candidate = Candidate.find(Integer(pair[0]))
        candidate.update(excluded: true)
      end
    end

    User.update_all has_voted: false
    Candidate.update_all totalvotes: 0.0
    redirect_to admin_voting_results_path, notice: "Recount successfully ordered"
  end
end
