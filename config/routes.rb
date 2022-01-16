Rails.application.routes.draw do
  resources :media_files

  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  get 'user', to: 'users#index'

  get '*all', to: redirect('/users/sign_up'), constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
