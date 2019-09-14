Rails.application.routes.draw do
  resources :workers do
    resources :assignments
  end

  resources :projects do
    resources :assignments
  end

  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
