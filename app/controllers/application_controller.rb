class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	include SessionsHelper

	# def current_user
 #    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
 #  	end
 #  	helper_method :current_user

 #  def authenticate
 #    redirect_to '/dashboard' unless current_user
 #  end
end