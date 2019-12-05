Rails.application.routes.draw do
  root to: "formulaires#index"
  resources :candidats
  resources :options
  resources :questions
  resources :formulaires
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
