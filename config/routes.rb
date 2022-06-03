Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, except: :destroy do
    resources :orders, only: %i[new create]
  end
  resources :books, only: :destroy
  get "my_books", to: "books#mine", as: "my_books"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
