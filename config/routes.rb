Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'pages#home'
	get '/software' => 'pages#software'
	get '/services' => 'pages#services'
	get '/support' => 'pages#support'
	get '/news' => 'pages#news'
	get '/aboutUs' => 'pages#aboutUs'
	get '/contact' => 'pages#contact'
	get '/mainframeServices' => 'pages#mainframeServices'
	get '/maintenaceSupport' => 'pages#maintenaceSupport'
	get '/systemSupport' => 'pages#systemSupport'
	get '/ftpSupport' => 'pages#ftpSupport'
	get '/careers' => 'pages#careers'
	get '/partners' => 'pages#partners'
	
	resources :events
	resources :fulltimejobs
	resources :parttimejobs



	resources :forms, only: [:new, :create]
	post '/forms/new', to: 'forms#create'
	




end
