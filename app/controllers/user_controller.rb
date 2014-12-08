class UserController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "You signed up successfully"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
	redirect_to :controller => 'session', :action => 'login'
	end

	def user_params
    	params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :salt)
  	end
  	
  	before_filter :save_login_state, :only => [:new, :create]

end 