Rails.application.routes.draw do
  
  get 'chows/new'

  get 'chows/index'
  post 'chows/list' 
  root 'static_pages#home'
  get 'static_pages/help'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  
  get 'chows/list' => 'chows#list'
  
  resources :chows do
    collection { post :import }
  end
  
end
