Rails.application.routes.draw do
  get 'learn/to'

  get 'learn/trade'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'index#index'
end
