Rails.application.routes.draw do
  get '/login' => 'admin/sessions#new'
  namespace :admin do
    resources :sessions, only: [:new, :create, :destroy]
    resources :users, only: [:index, :edit, :update]
  end
end
