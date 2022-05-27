Rails.application.routes.draw do
  get 'candidates/home_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/admin/voting-results', to: 'commissioner#home_page', as: 'admin_voting_results'
  # Defines the root path route ("/")
  # root "articles#index"
end
