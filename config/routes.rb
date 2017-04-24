Rails.application.routes.draw do
  resources :admins
  resources :fares
  resources :feedbacks
  resources :services
  resources :drivers do
  	collection do
  		get:'index_1'
  		get:'index_2'
      get:'set_approved'
  	end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'admins#index'
end
