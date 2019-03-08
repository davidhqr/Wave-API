Rails.application.routes.draw do
  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'waves', to: 'waves#index'
  get 'waves/:code', to: 'waves#show'
  post 'waves', to: 'waves#create'
end
