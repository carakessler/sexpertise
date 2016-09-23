Rails.application.routes.draw do
  get 'checkouts/new'

	get '/signup', to: 'users#new', as: 'signup'
	post '/signup',  to: 'users#create'
	get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'
  get '/checkouts', to: 'checkouts#new', as: 'checkouts'

  root :to => 'spina/pages#homepage'

  resources :users, :checkouts

  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
