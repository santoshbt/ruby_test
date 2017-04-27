Rails.application.routes.draw do
  resources :restaurants do
  	member do 
  		delete :soft_delete
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"
end
