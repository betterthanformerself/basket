class ApplicationController < ActionController::Base
	# before_action :authenticate_user!
	def after_sign_in_path_for(user)
		home_index_path
	end

	def after_sign_out_path_for(scope)
		home_index_path
	end

	def current_cart
		begin
		Cart.find(session[:cart_id])
	    rescue ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
	end
	end
=begin
	
rescue Exception => e
	
end	def number_to_indian_currency(number)
	  if number.present?
	    string = number.to_s.split('.')
	    number = string[0].gsub(/(\d+)(\d{3})$/){ p = $2;"#{$1.reverse.gsub(/(\d{2})/,'\1,').reverse},#{p}"}
	    number = number.gsub(/^,/, '') + '.' + string[1] if string[1] # remove leading comma
	    number = number[1..-1] if number[0] == 44
	  end
	  "₹ #{number}"
	end
=end

end
