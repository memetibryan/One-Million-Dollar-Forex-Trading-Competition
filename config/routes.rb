Rails.application.routes.draw do

  root :to => 'index#index'

  resources :awards
  resources :blogs
  resources :competition
  resources :expo
  resources :learn
  resources :conference
  resources :dollar_competition
  resources :trading_platform
  resources :east_africa_awards
  resources :south_africa_awards
  resources :pdf
end
