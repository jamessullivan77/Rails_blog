class HomelessesController < ApplicationController
 def index
		@homelesses = Homeless.all 	
 	
 end

 def create
		@homeless = Homeless.new(params.require(:homeless).permit(:street_number,:street,:items_list))
		@homeless.user_id = session[:user_id]
	
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

	def destroy
   begin
      @delete_item = homeless.find(string[:items_list])
   rescue
   end
   if @delete_item.destroy
     flash[:notice] = "You have Checked off an Item, Thank you!"
   else
     flash[:notice] = "Sorry, we could not check out this item"
   end
   redirect_to users_path
 end


	# 	private 

	# 	def user_params
	# 		params.require(:homeless).permit(:picture, :street, :street_number :items_list)

	# end


end



