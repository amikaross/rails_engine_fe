Rails.application.routes.draw do
  root "welcome#root"

  resources :merchants, only: [:index, :show]
  resources :items, only: [:index, :show]
end
