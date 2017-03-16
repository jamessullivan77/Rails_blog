(class HomepageController < ApplicationController
	def index 
		 @user = User.find(session[:user_id]) 

		 @homeless = Homeless.all
		end
		

		def show 
		


	end
end
