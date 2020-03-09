Rails.application.routes.draw do
  get "/signup" => "authentication/registrations#new"
  post "/signup" => "authentication/registrations#create"

  get "/login" => "authentication/sessions#new"
  post "/login" => "authentication/sessions#create"
  get "/logout" => "authentication/sessions#destroy"

  get "/password" => "passwords#new"
  post "/password" => "passwords#create"

  resources :widgets, only: [:index, :create]
  # get '/user/me/widgets', to: 'user#show'
  get "/user/reset_password", to: "user#reset_password"
  get "/dashboard", to: "dashboard#show"
  get "/search" => "dashboard#search", :as => :search

  root to: "visitor#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

