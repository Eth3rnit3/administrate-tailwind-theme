Rails.application.routes.draw do
  namespace :admin do
    resources :messages
    resources :users
    resources :comments

    root to: 'messages#index'
  end
  root to: 'application#root'
end
