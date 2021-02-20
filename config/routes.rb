Rails.application.routes.draw do
  resources :properties, only: [:index, :show, :new, :create, :edit, :update]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
