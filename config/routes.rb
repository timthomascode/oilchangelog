Rails.application.routes.draw do
  resources :vehicles do
    resources :oil_changes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
