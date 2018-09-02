class SessionsController < ApplicationController

  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && User.authenticate(params[:session][:email], params[:session][:password])
  		session[:user_id] = user.id
  		redirect_to '/dashboard', alert:"User Logged In"
  	else
  		redirect_to "/login", alert:"Inavlid username or password"
  	end
  end

  def destroy
  	session.delete(:user_id)
    session.clear
    @current_user = nil
  	redirect_to "/login", alert:"Successfully logged out"
  	
  end
end
