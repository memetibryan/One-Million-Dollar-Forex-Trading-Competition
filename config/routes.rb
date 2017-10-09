Rails.application.routes.draw do

  root :to => 'index#index'

  resources :awards
  resources :blogs
  resources :competition
  resources :expo
  resources :learn
  resources :conference
  resources :dollar_competition
end
