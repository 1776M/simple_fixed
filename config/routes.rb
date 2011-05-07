SimpleFixed::Application.routes.draw do

  resources :users

  match '/signup',  :to => 'users#new'
  match '/demo',    :to => 'pages#demo'
  match '/about',   :to => 'pages#about'
  match '/pricing',    :to => 'pages#pricing'

  root :to => 'pages#home'

 end
