class User < ApplicationRecord
	attr_accessor :email, :password


	def self.authenticate(email, password)
		user = find_by_email(email)

		return nil if user.nil?
		return user if user.password?
	end
end