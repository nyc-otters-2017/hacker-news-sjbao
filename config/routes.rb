Rails.application.routes.draw do
  resources :users do
  end
  
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
end
