Rails.application.routes.draw do
  root 'login#index'

  get '/login', to: 'login#index'
  get '/login/voter_login', to: 'login#voter_login', as: 'voter_login'

  get '/candidates', to: redirect('/candidates/add'), as: 'candidates'
  get '/candidates/add', to: 'candidates#add', as: 'add_candidates'
  post '/candidates/add', to: 'candidates#create'
  get 'candidates/home_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/voter', to: 'voter#voter_home_page', as: 'voter_home_page'
  get '/voter/ballot-page', to: 'ballot#ballot_page', as: 'voter_ballot_page'
  post '/voter/ballot-page', to: 'ballot#post_vote', as: 'post_vote'
  get '/admin/voting-results', to: 'commissioner#home_page', as: 'admin_voting_results'
  get '/admin/recount', to: 'commissioner#recount', as: 'recount'
  post '/admin/order-recount', to: 'commissioner#order_recount', as: 'order_recount'
  # Defines the root path route ("/")
  # root "articles#index"
end
