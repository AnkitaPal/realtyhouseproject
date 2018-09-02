class User < ApplicationRecord
	attr_accessor :email,:password


	def self.authenticate(email, password)
		user = find_by_email(email)
		#user = User.where(["email = ?", email]).first
		#user = User.where("email = ? AND password = ?", email,  password)
		#logger.debug user.id
		#logger.debug "email: "+user.email.to_s
		#logger.debug user.password
		return nil if user.nil?
		#return user
		return user if user.password?
	end
end