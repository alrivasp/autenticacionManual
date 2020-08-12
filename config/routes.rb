Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  get 'my_stories', to: 'stories#my_stories'
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
