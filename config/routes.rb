Rails.application.routes.draw do
  namespace :admin do
    resources :users, only: [:index, :edit, :update]
  end
end
