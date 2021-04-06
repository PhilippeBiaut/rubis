Rails.application.routes.draw do
  get "welcome/index"  
  root to: "welcome#index"  
  resources :campings
  resources :villes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
