Rails.application.routes.draw do
  root "stories#index"

  resources :stories, only: [:index] do
    member do
      get 'preview'
    end
  end
end
