# == Route Map
#

Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: "users/sessions",
               registrations: "users/registrations"
             }

  namespace :api do
    namespace :v1 do
      resources :categories
      resources :sources
      resources :transactions
    end
    # namespace :v2 do
    #   resource :countries
    # end
  end
end
