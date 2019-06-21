Rails.application.routes.draw do
  #root directory
  root 'mock_services#index'

  resources :mock_services

  namespace :api do
    namespace :v1 do
      resources :finbits do
        collection do
          post 'login'
          post 'uploadStatement'
          get 'summary/:account_uid' => 'finbits#summary'
        end
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :karzas do
        collection do
          post 'gst-verification' => 'karzas#gst_verification'
          post 'cinlookup'
          post 'corp/profile' => 'karzas#corp_profile'
          post 'ocr/kyc' => 'karzas#ocr_kyc'
          post 'pan'
        end
      end
    end
  end
end
