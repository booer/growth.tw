Rails.application.routes.draw do
	# mvp.domain
	namespace :mvp, module: "mvp", path: "", constraints: lambda { |r| r.subdomain.split('.')[0] == 'mvp' } do
	  root 'pages#index'
	end	
	# devise
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
	# /
  root 'posts#index'
  get 'info', to: 'pages#info', as: :info
  
  resources :topics
  resources :workshops
  resources :posts
  resources :pages
  resources :feedbacks
  # /admin
	namespace :admin do
	  root 'pages#index'
	  resources :topics
	  resources :workshops
	  resources :posts
	  resources :sites
	  resources :pages
	  resources :feedbacks
	  get 'page_mode', to: 'pages#page_mode', as: :page_mode
	end	
end
