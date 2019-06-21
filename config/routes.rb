Rails.application.routes.draw do
  #root directory
  root 'mock_services#index'

  resources :mock_services

  #APIs for Finbit
  post 'bank-auth/api/v1/login' => 'api/v1/finbits#login'
  post 'bank-connect/api/v1/uploadStatement' => 'api/v1/finbits#uploadStatement'
  get 'bank-account/api/v1/summary/:account_uid' => 'api/v1/finbits#summary'
  get 'bank-account/api/v1/peakUtilizationPerMonth/:account_uid' => 'api/v1/finbits#peakUtilizationPerMonth'
  get 'bank-account/api/v1/topFiveCreditAndDebitInstances/:account_uid' => 'api/v1/finbits#topFiveCreditAndDebitInstances'
  get 'bank-account/api/v1/loanReceivedInstances/:account_uid' => 'api/v1/finbits#loanReceivedInstances'
  get 'bank-account/api/v1/penaltyInstances/:account_uid' => 'api/v1/finbits#penaltyInstances'
  get 'bank-account/api/v1/internalTransactionsInstances/:account_uid' => 'api/v1/finbits#internalTransactionsInstances'
  get 'bank-account/api/v1/monthwiseSummary/:account_uid' => 'api/v1/finbits#monthwiseSummary'

  #APIs for Karza
  post 'api/v3/karzas/gst-verification' => 'api/v1/karzas#gst_verification'
  post 'api/v2/karzas/cinlookup' => 'api/v1/karzas#cinlookup'
  post 'api/v1/karzas/corp/profile' => 'api/v1/karzas#corp_profile'
  post 'api/v2/karzas/ocr/kyc' => 'api/v1/karzas#ocr_kyc'
  post 'api/v2/karzas/pan' => 'api/v1/karzas#pan'
  post 'api/v2/karzas/pan' => 'api/v1/karzas#pan'

end
