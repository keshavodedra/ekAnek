Rails.application.routes.draw do
  resources :media_files
  devise_for :users
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
  get 'user', to: 'users#index'
  get '*path', to: redirect("/users/sign_up")
end
