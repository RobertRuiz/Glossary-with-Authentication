Rails.application.routes.draw do

  resources :categories
  resources :terms
  resources :users
  resources :session
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end

Rails.application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
end
