Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 ###is the main sign in and sign up page###
 	resources :users
	resources :homelesses
 	

 	get '/' => 'users#index'

	get '/sign_up' => 'users#sign_up'
	post '/login' => 'sessions#create'

	get '/login' => 'sessions#new'

	get '/homepage' => 'homepage#index'


	get '/homeless' => 'homelesses#new'
	post '/homeless' => 'homelesses#create'

	# get '/show' => 'users#show'
	
	


end




