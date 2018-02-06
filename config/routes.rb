Rails.application.routes.draw do
  root 'pages#home'

  resources :projects
  resources :sessions, only: [:new, :create]
  resources :resumes, only: [:create, :update]

  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'

  get 'admin/resume', to: 'resumes#edit'

end
