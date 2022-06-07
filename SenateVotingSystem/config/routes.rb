Rails.application.routes.draw do
  root 'login#index'

  get '/login', to: 'login#index'
  get '/login/voter_login', to: 'login#voter_login', as: 'voter_login'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/voter', to: 'voter#voter_home_page', as: 'voter_home_page'
  get '/voter/ballot-page', to: 'ballot#ballot_page', as: 'voter_ballot_page'
  post '/voter/ballot-page', to: 'ballot#post_vote', as: 'post_vote'

  get '/admin', to: redirect('/admin/voting-results')
  get '/admin/voting-results', to: 'commissioner#home_page', as: 'admin_voting_results'
  get '/admin/recount', to: 'commissioner#recount', as: 'recount'
  post '/admin/recount', to: 'commissioner#order_recount', as: 'order_recount'
  get '/admin/add-candidate', to: 'candidates#add', as: 'add_candidates'
  post '/admin/add-candidate', to: 'candidates#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
