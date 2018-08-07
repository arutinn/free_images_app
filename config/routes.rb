# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/show'
  
  resources :photos
  
  root 'welcome#index'
end
