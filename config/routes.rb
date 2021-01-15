Rails.application.routes.draw do

  # get '/campers', to: "campers#index", as: "campers"
  # get '/campers/:id', to: "campers#show", as: "camper"


  get 'campers/new', to: "campers#new" , as: "new_camper"
  post 'campers'   , to: "campers#create"
  
   resources :campers, only: [:index, :show]

  get '/activities', to: "activities#index", as: "activities"
  get '/activities/:id', to: "activities#show", as: "activity"

  get '/signups', to: "signups#index", as: "signups"
  get '/campers/:id', to: "signups#show", as: "signup"

  get 'signups/new', to: "signups#new" , as: "new_signup"
  post 'signups'   , to: "signups#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
