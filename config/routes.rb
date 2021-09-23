Rails.application.routes.draw do
  get '/login' => 'admin/sessions#new'
  get '/logout' => 'admin/sessions#destroy'
  
  namespace :admin do
    resources :posts
    resources :sessions, only: [:new, :create, :destroy]
    resources :users, only: [:index, :edit, :update]
  end
end
