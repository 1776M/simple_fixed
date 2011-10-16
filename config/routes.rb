SimpleFixed::Application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :projects, :only => [:create, :destroy, :show]
  resources :groups
  resources :basecases, :only => [:create, :destroy, :show]
  resources :annuals
  resources :borrowings
  resources :scenarios, :only => [:create, :destroy, :show]
  resources :actannuals
  resources :actborrowings
  resources :swapcurves
  resources :forwardcurves
  resources :fxrates
  resources :riskpremia

  match '/signup',      :to => 'users#new'
  match '/demo',        :to => 'pages#demo'
  match '/about',       :to => 'pages#about'
  match '/pricing',     :to => 'pages#pricing'
  match '/environment', :to => 'pages#environment'  

  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  root :to => 'pages#home'

 end
