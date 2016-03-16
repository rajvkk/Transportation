Rails.application.routes.draw do

  devise_for :users

	namespace :api, defaults: { format: 'json' } do
  	namespace :v1, only: [:index, :create] do 	 
  	 resources :stores do
       resources :suppliers
     end 	 
  	 resources :warehouses do
       resources :suppliers
     end
     resources :suppliers
  	end
  end

end