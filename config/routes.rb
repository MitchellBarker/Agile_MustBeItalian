Rails.application.routes.draw do
  
  get 'errors/not_found'

  get 'errors/internal_server_error'

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
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  resources :chows do
    collection { post :import }
  end
  
end
