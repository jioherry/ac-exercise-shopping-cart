Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :carts do
		resources :products
	end

  resources :users do
  	resources :profile
  end


end
