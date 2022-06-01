class VoterController < ApplicationController
  def voter_home_page
    session[:id]= params[:userID]
    if User.where(:id => session[:id])[0] == nil
      redirect_to voter_login_path
      flash[:message] = "Login Failed"
    end
    @current_user= User.where(:id => session[:id])[0]
  end
end
