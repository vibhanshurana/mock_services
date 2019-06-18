Rails.application.routes.draw do
  #root directory
  root 'mock_service#index'

  resources :mock_services

  namespace :api do
    namespace :v1 do
      resources :finbits do
        collection do
          post "login"
        end
      end
    end
  end

end
