Rails.application.routes.draw do
  resources :attempts
  resources :quiz_questions
  resources :questions
  resources :quizzes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/hello', to: 'application#hello_world'
  post '/login', to: 'sessions#create'
  get '/me', to: 'users#show_current'
  # Defines the root path route ("/")
  # root "articles#index"
end
