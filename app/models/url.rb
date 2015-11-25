class Url < ActiveRecord::Base

	before_create :shorten
	after_create :shorten
	# This is Sinatra! Remember to create a migration!
	def shorten
		self.short_url = SecureRandom.hex(6)
	end
 
	# def generate_secure_hex
	# 	SecureRandom.hex(6)
	# end
end
