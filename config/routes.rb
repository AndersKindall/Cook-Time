Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api/search/:query', to: 'api/recipes#search', as: 'api_recipes_search', defaults: { format: :json } 
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :recipes, only: [:show, :index] 
    resources :comments, only: [:create, :destroy, :update]
    resources :ratings, only: [:create, :destroy, :update]
    
  end
  
  root to: 'static_pages#root'

end
