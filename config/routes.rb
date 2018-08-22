Rails.application.routes.draw do

	root	'welcome#home'
	
  	get 	'/addnew', to:'users#new'
  	get		'/home',  to:'welcome#home'
  	get		'/aboutus',  to:'welcome#aboutus'
  	
  	get 	'/dashboard', to:'agent#index'

	get  	'/login', to:'sessions#new'
	post 	'/login', to:'sessions#create'
    delete 	'/logout', to:'sessions#destroy'
  	
  	resources :users
  	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
