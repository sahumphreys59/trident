Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'pages#home'
	get '/software' => 'pages#software'
	get '/services' => 'pages#services'
	get '/support' => 'pages#support'
	# get '/news' => 'pages#news'
	get '/aboutUs' => 'pages#aboutUs'
	get '/contact' => 'pages#contact'
	get '/mainframeServices' => 'pages#mainframeServices'
	get '/maintenaceSupport' => 'pages#maintenaceSupport'
	get '/systemSupport' => 'pages#systemSupport'
	get '/ftpSupport' => 'pages#ftpSupport'
	get '/careers' => 'pages#careers'



	get 'events', to: 'pages#index'
  get 'events/new', to: 'pages#index'
  get 'events/:id', to: 'pages#index'
  get 'events/:id/edit', to: 'pages#index'

	namespace :api do
    resources :events, only: %i[index show create destroy update]  
  end


	




end
