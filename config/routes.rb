# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  # admin
  get 'tasks', to: 'tasks#index'

  # edit / update
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # new / create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # show
  get  'tasks/:id', to: 'tasks#show', as: "task"

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
