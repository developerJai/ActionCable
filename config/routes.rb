Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  namespace :api do
  	namespace :v1 do
  	   get "/list" => "messages#index"
  	   post "/create" =>"messages#create" 
  	end	
  end		
end
