Rails.application.routes.draw do
  resources :appellations
  resources :stocks
  resources :vintages
  resources :castles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
