Rails.application.routes.draw do
  resource :user, path: 'users/me/widgets', only: [:show]
  
  root to: 'dashboard#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
