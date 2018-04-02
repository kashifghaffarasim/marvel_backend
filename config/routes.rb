Rails.application.routes.draw do
  devise_for :users , skip: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  namespace :api, defaults: {format: :json} do
    
    namespace :v1 do
        
      as :user do
        resources :users do
          collection do
            post '/register' => "users#create"
          end
        end
      end
    end
  end
  
end
