Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'
  get '/', to:'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  post 'tasks/new', to: 'tasks#create', as: 'create'
  post 'tasks/edit', to: 'tasks#edit', as: 'edit'
  post 'tasks/update/:id', to: 'tasks#update', as: 'update'
  delete 'tasks/delete/:id', to: 'tasks#destroy', as: 'destroy'
end
