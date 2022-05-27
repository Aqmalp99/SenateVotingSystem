Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/candidates', to: redirect('/candidates/add')
  get '/candidates/add', to: 'candidates#add', as: 'add_candidates'
end
