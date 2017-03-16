Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 ###is the main sign in and sign up page###
 	resources :users
	resources :homelesses
 	
###########################
#home
###########################
 	get '/' => 'users#index'
 	get '/homepage' => 'homepage#index'
###########################
#sign_up/sing_in
###########################
	get '/sign_up' => 'users#sign_up'
	post '/login' => 'sessions#create'
	get '/login' => 'sessions#new'
###########################
#finding/creating a pin for a homeless person
###########################
	get '/homeless' => 'homelesses#new'
	post '/homeless' => 'homelesses#create'


	
	


end




