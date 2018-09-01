# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/show'
  #get 'users/:id' => 'users#show'
  
  resources :users, only: [:show]
  resources :photos
  
  root 'welcome#index'
end
