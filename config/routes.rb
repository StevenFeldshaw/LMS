Rails.application.routes.draw do
  resources :libraries, only: [:index, :create] do
    resources :books, only: [:index, :create] do
      post '/search', to: 'books#search', on: :collection
    end
  end
end
