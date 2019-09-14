Rails.application.routes.draw do
  resources :workers
  resources :projects
  resources :assignments

  root 'assignments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
