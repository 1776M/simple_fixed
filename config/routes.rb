SimpleFixed::Application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :projects, :only => [:create, :destroy, :show]

  match '/signup',  :to => 'users#new'
  match '/demo',    :to => 'pages#demo'
  match '/about',   :to => 'pages#about'
  match '/pricing',    :to => 'pages#pricing'
  
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  root :to => 'pages#home'

 end
