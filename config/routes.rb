Rails.application.routes.draw do
  #root directory
  root 'mock_services#index'

  resources :mock_services

  namespace :api do
    namespace :v1 do
      resources :finbits do
        collection do
          post "login"
          post "uploadStatement"
          get "summary/:account_uid" => "finbits#summary"
        end
      end
    end
  end
end
