# frozen_string_literal: true

Rails.application.routes.draw do
  root 'zips#index'
  resources :zips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
