Rails.application.routes.draw do
  resources :endorsements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "evidences#index"

  resources :evidences
end
