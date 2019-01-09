Rails.application.routes.draw do
  root 'vehicles#index'

  resources :vehicles do
    resources :oil_changes, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
