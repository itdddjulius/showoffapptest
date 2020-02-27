Rails.application.routes.draw do        
	
	get '/login' => 'authentication/sessions#new'
	post '/login' => 'authentication/sessions#create'
	get '/logout' => 'authentication/sessions#destroy'

  

  get 'passwords/new'
  resources :widgets, only: [:index, :create]
	# get '/user/me/widgets', to: 'user#show'
	get '/user/reset_password', to: 'user#reset_password'
  get '/dashboard', to: 'dashboard#show'
  root to: 'visitor#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
