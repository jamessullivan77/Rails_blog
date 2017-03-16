Iclass SessionsController < ApplicationController
  def create 
  	@user = User.where(username: params[:username]).first
  	p params, @user
  	
  	if @user && @user.password == params[:password]
  	
  		session[:user_id] = @user.ido
  	end
  	redirect_to '/homepage'
	end
end
