Rails.application.routes.draw do
	devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "page#home"
end
