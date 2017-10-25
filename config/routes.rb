Rails.application.routes.draw do
  root 'application#index'
  # resources :books
  # resources :subjects
  # resources :univs
  resources :episodes, only: [:new, :create] do
    collection do
      get 'dump'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
