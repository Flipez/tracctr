Rails.application.routes.draw do
  root 'welcome#index'

  resource :users

  get '/one_shots' => 'one_shots#index'
  post '/one_shots' => 'one_shots#create'
  get '/one_shots/:id' => 'one_shots#show'

  post '/bullets' => 'bullets#create'

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/profile' => 'profile#show'
  
  get '/accounts' => 'accounts#index'
  get '/accounts/:id' => 'accounts#show'
  post '/accounts' => 'accounts#create'

  post '/bills/:id' => 'bills#update'

  post '/wallets' => 'wallets#create'
end
