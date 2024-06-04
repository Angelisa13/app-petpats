Rails.application.routes.draw do
  resources :products
  get 'dashboard/index'
  
  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#index"
end
