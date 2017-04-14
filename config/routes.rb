Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root 'welcome#index'

	resources :users do
	    collection do
	        get :profile
	    end
	end

=======
  root 'products#index'

  resources :products, only:[ :index, :show] do
		member do
			post :add_to_cart
		end
	end

	resource :carts
	resources :orders

	namespace :admin do
		root 'orders#index'
		resources :products
		resources :orders
	end
>>>>>>> book

end
