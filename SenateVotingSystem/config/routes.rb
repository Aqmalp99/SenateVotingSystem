Rails.application.routes.draw do
  root 'login#index'

  get '/login', to: 'login#index'

  get 'candidates/home_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/admin/voting-results', to: 'commissioner#home_page', as: 'home_page'
  # Defines the root path route ("/")
  # root "articles#index"
end
