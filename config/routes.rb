Rails.application.routes.draw do

  namespace :api do
    resources :emails
    resources :politicians do
    	collection do
    		get 'search'
    	end
    end
    resources :workers, only: [:show]
  end

  root 'angular#root'
  get "*path" => "angular#root"

end
