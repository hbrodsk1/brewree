Rails.application.routes.draw do
  resources :breweries, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
