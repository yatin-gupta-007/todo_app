Rails.application.routes.draw do
  root 'tasks#index' # Set the home page to list all tasks

  # Custom routes for tasks
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  # Alternatively, if you want to use only specific actions
  # resources :tasks, only: [:index, :show, :create]
end