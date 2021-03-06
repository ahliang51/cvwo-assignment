Rails.application.routes.draw do
  root 'homepage#index'

  post '/api/create-user' => 'users#create'
  post '/api/login' => 'sessions#create'
  get '/api/logout' => 'sessions#destroy'
  get '/api/authenticated' => 'sessions#logged_in'
  
  get '/api/posts' => 'posts#index'
  post '/api/posts' => 'posts#create'
  delete '/api/posts' => 'posts#destroy'
  put '/api/posts' => 'posts#update'
  get '/api/posts-column' => 'posts#retrieve_column' , defaults: { format: 'json' }
  put '/api/update-column' => 'posts#update_column'
  
  
  match '*path', to:'homepage#index', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
