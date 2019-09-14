Rails.application.routes.draw do
  resources :workers
  resources :projects
  resources :assignments

  delete 'assigments/:worker_id/:project_id', to: 'assignments#destroy', as: 'remove_worker_from_project'

  root 'assignments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
