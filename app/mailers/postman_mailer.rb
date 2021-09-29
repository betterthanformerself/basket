class PostmanMailer < ApplicationMailer
	def purchased
		mail(:to=>'abhigya.a@westagilelabs.com',:subject=>'your purchase is succussfully added')
				
	end
end
