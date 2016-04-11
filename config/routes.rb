Rails.application.routes.draw do
  get 'chows/new'

  get 'chows/index'

  root 'static_pages#home'
  get 'static_pages/help'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  
  resources :chows do
    collection { post :import }
  end
end
