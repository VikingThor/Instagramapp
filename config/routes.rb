Rails.application.routes.draw do
 
  root to: 'home#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
  get 'search' => 'search#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
