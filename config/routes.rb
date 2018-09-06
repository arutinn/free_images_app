# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/stats'
  #get 'users/:id' => 'users#show'
  
  resources :users #, only: [:show]
  resources :photos
  #put 'photos/add_to_favoritesss'
  
  root 'welcome#index'
end
