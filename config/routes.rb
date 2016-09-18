Rails.application.routes.draw do
	get '/signup', to: 'users#new', as: 'signup'
	post '/signup',  to: 'users#create'
	resources :users
  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
