Rails.application.routes.draw do

  resources :admins, only: [:index, :edit, :show, :update]
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  delete 'logout'   => 'sessions#destroy'

  resources :admins
  root 'application#index'
  # resources :books
  # resources :subjects
  # resources :univs
  resources :episodes do
    collection do
      get 'dump'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
