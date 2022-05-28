Rails.application.routes.draw do
  root 'login#index'

  get '/login', to: 'login#index'

  get '/candidates', to: redirect('/candidates/add'), as: 'candidates'
  get '/candidates/add', to: 'candidates#add', as: 'add_candidates'
  post '/candidates/add', to: 'candidates#create'
  get 'candidates/home_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/voter', to: 'voter#voter_home_page', as: 'voter_home_page'
  get '/admin/voting-results', to: 'commissioner#home_page', as: 'admin_voting_results'
  # Defines the root path route ("/")
  # root "articles#index"
end
