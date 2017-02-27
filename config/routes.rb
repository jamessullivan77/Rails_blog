Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 ###is the main sign in and sign up page###
 	resources :users
 	get '/' => 'users#index'

	resources :users 
	get '/sign_up' => 'users#sign_up'
	post '/login' => 'sessions#create'

	resources :homepage
	get '/homepage' => 'homepage#index'

	resources :mapper
	get '/mapper' => 'homepage#mapper'

	resources :homelesses
	get '/homeless' => 'homeless#homepage'
	# post '/homepage' => 'homeless#create'

end




