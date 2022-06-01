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

  end
end
