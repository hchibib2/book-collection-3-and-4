Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end

