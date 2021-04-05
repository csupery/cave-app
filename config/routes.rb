Rails.application.routes.draw do
  resources :appellations
  resources :castles
  resources :stocks
  resources :vintages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
