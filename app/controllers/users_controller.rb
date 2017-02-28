class UsersController < ApplicationController
	def index
		@user = User.all
	end
	
	def show 
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
	
		if @user.save 
			flash[:notice] = "Thanks for Signing Up!"
			redirect_to '/sign_in'

		else flash[:alert] = "Please Try Again"
			redirect_to user @user
		end
	end

		private 

		def user_params
			params.require(:user).permit(:fname, :lname, :username, :email)

	end

	def find 
		@user = User.find(params[:id])
			if @user.sign_in 
				redirect_to '/homepage'
		end
	end
end

