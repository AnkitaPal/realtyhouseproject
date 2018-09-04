Rails.application.routes.draw do

    root	'welcome#index'
    resources :users
	
  	get 	'/addnew_user', to:'users#new'
  	get		'/home',  to:'welcome#index'
  	get		'/aboutus',  to:'welcome#aboutus'
    get   '/contactus', to:'welcome#contactus'
  	
  	get 	'/dashboard', to:'agent#index'
  	get		'/profile',	to:'agent#show'

    get  	'/login', to:'sessions#new'
    post 	'/login', to:'sessions#create'
    delete 	'/logout', to:'sessions#destroy'
  	
  	
  	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
