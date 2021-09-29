class AdminController < ApplicationController
  def login
  	if request.post?
  		if params[:name]=="admin" and params[:password]=="123456"
  			session[:admin]="admin"
  			flash[:notice]="Welcome Admin"
  			redirect_to stores_path
  		
  	else
        flash[:notice]="Invalid credentials"
        redirect_to :action=>:login
  	end
   end
  end


  def logout
  	session[:admin]=nil
  	flash[:notice]="You are logged out!" 
  	redirect_to :action=>:login
  end

end
