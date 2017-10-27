Rails.application.routes.draw do

  resources :questions
  root 'application#index'

  resources :admins, only: [:index, :edit, :show, :update]
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  delete 'logout'   => 'sessions#destroy'

  resources :episodes do
    collection do
      get 'dump'
    end
  end
end
