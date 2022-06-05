class VoterController < ApplicationController
  def voter_home_page
    if session[:id] == nil
      session[:id]= params[:userID]
    end

    if User.where(:id => session[:id])[0] == nil
      reset_session
      redirect_to voter_login_path
      flash[:message] = "Login Failed"
    end
    @current_user= User.where(:id => session[:id])[0]
  end
end
