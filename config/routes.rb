Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'
  get 'admin', to: 'admin#index'
  get 'login', to: 'sessions#new'

  resources :sessions, only: [:create]

  namespace :admin do
    resources :projects
    resources :resumes, only: [:create, :update]
    get 'resume', to: 'resumes#edit'
  end
end
