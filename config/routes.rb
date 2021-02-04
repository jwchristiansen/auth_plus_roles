Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do
    resources :users
  end
  resources :items
  resources :users
  resources :roles
  root 'items#index'
end
