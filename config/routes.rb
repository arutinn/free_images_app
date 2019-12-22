# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/stats'

  resources :users # , only: [:show]
  resources :photos
  resources :favorite_photos

  root 'welcome#index'
end
