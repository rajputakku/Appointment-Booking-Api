Rails.application.routes.draw do
	post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
  namespace :v1 do
   resources :appointments
  end
 end
end
