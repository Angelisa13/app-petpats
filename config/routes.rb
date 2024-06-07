Rails.application.routes.draw do
  get 'proyecto/inicio', to: 'proyecto#inicio', as: 'inicio_proyecto'
  resources :products
  resources :users
  get 'dashboard/index'
  
  
  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#index"
end
