class CommissionerController < ApplicationController
  def home_page
    @temp=Candidate.new
  end
end
