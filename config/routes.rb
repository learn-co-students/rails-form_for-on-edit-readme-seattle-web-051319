Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, only: [:index, :create, :new, :edit, :update]

  get 'posts/:id', to: 'posts#show'

  patch 'posts/:id', to: 'posts#update'
end
