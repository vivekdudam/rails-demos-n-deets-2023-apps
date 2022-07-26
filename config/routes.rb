Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'todos', to: 'todos#index', as: 'todos'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  
end
