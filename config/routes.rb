Rails.application.routes.draw do
  root 'todo#index'
  get 'todo/index', to: 'todo#index'
  get 'todo/new', to: 'todo#new'
  get 'todo/create', to: 'todo#create'
  get 'todo/show/:id', to: 'todo#show'
  get 'todo/edit/:id', to: 'todo#edit'
  get 'todo/update/:id', to: 'todo#update'
  get 'todo/destroy/:id', to: 'todo#destroy'
  get 'todo/completion/:id', to: 'todo#completion'
end

