Rails.application.routes.draw do
  root 'homepage#index'

  post '/api/create-user' => 'users#create'
  post '/api/login' => 'users#login'
  
  match '*path', to:'homepage#index', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
