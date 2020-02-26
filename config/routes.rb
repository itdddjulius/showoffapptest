Rails.application.routes.draw do
  namespace :authentication do
    resources :sessions, only: [:create] 
  end         
	
	get '/login' => 'authentication/sessions#new', as: :login
  

  get 'passwords/new'
  get 'widgets/show'
  get 'widgets/index'
  get 'widgets/show'
	# get '/user/me/widgets', to: 'user#show'
	get '/user/reset_password', to: 'user#reset_password'
  get '/dashboard', to: 'dashboard#show'
  root to: 'visitor#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
