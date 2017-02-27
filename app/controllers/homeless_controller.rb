class HomelessController < ApplicationController
def index
		

	end
	
	def create
		@homeless = Homeless.new(homeless_params)
	
		if @homeless.save 
			flash[:notice] = "Thank you for reporting someone in need"
			redirect_to '/homepage'

		else flash[:alert] = "Please Try Again"
			redirect_to @homeless
		end
	end

		def show 
		@homeless = Homeless.find(params[:id])
	end


	# 	private 

	# 	def user_params
	# 		params.require(:homeless).permit(:picture, :street, :street_number :items_list)

	# end


end

