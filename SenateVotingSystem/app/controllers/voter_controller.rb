class VoterController < ApplicationController
  def voter_home_page
    session[:id]= 1
    @current_user= User.where(:id => session[:id])[0]
  end
end
