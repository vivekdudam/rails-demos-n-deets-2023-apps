Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'basket_ball_players', to: 'basket_ball_players#index', as: 'basket_ball_players'
  post 'basket_ball_players', to: 'basket_ball_players#create'
  get 'basket_ball_players/new', to: 'basket_ball_players#new', as: 'new_basket_ball_player'
  get 'basket_ball_player/:id', to: 'basket_ball_players#show', as: 'basket_ball_player'
  get 'basket_ball_player/:id/edit', to: 'basket_ball_players#edit', as: 'edit_basket_ball_player'
  patch 'basket_ball_player/:id', to: 'basket_ball_players#update'
  delete 'basket_ball_player/:id', to: 'basket_ball_players#destroy'

end
