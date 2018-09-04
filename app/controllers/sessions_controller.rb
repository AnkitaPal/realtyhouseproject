class SessionsController < ApplicationController

  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to '/dashboard', alert:"User Logged In"
  	else
  		redirect_to "/login", alert:"Inavlid username or password"
  	end
  end

  def destroy
  	log_out
  	redirect_to "/login", alert:"Successfully logged out"
  	
  end
end
