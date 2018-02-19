Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'
  get 'admin', to: 'admin#index'
  get 'login', to: 'sessions#new'

  resources :sessions, only: [:create]
  resources :projects, only: [:show], controller: 'admin/projects'

  namespace :admin do
    resources :projects, except: [:show]
    resources :settings, only: [:edit, :update]
    resources :resumes, only: [:create, :update]
    get 'resume', to: 'resumes#edit'
  end
end
