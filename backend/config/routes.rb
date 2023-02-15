Rails.application.routes.draw do
  resources :attempts
  resources :quiz_questions
  resources :questions
  resources :quizzes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/hello', to: 'application#hello_world'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show_current'
  get '/leaderboard', to: 'users#ranked_index'

  get '/random_selection', to: 'questions#random_selection'
  # Defines the root path route ("/")
  # root "articles#index"
end