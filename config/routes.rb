Rails.application.routes.draw do
  get 'users/new'

  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
