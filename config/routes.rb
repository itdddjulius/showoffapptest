Rails.application.routes.draw do
  get 'passwords/new'
  get 'widgets/show'
  get 'widgets/index'
  get 'widgets/show'
	# get '/user/me/widgets', to: 'user#show'
	get '/user/reset_password', to: 'user#reset_password'
  root to: 'dashboard#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
