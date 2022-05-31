class LoginController < ApplicationController
  def index
    reset_session
  end
end
