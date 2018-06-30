Rails.application.routes.draw do
  
  root to: 'home#index'
  namespace :blog do 
  	resources :posts
  end
  resource :newsletter, only: [:create, :destroy]
  resource :contact, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
