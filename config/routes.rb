Rails.application.routes.draw do
  
  devise_for :users

  namespace :dashboard do 
  	get '',   to: 'home#index'
  	resources :categories
  	resources :newsletters
  	resources :posts 
  	resources :services
  	resources :users
  end

  root to: 'home#index'
  namespace :blog do 
  	resources :posts, only: [:index, :show]
  end
  resource :newsletter, only: [:create, :destroy]
  resource :contacts, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
