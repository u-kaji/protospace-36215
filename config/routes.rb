Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :user,       only: [:show]
  resources :prototypes, only: [:create, :new, :destroy, :show, :edit, :update] do
    resources :comments, only: [:create, :show]
  end
end


