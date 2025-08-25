Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts', to: "posts#index", as: "posts"
  get '/authors', to: "authors#index", as: "authors"

  resources :companies do
    resources :jobs, only: [:index, :show, :create, :update, :destroy]
  end
  resources :jobs do
    resources :applications, only: [:index, :create, :update, :destroy]
  end
  resources :applicants do
    resources :applications, only: [:index, :create, :update, :destroy]
  end
  resources :applications, only: [:show]
end
