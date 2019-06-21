class Api::V1::KarzasController < ApplicationController
  skip_before_action :verify_authenticity_token

  def gst_verification
    puts "====gst_verification===="
    mock_response = JSON.parse(MockService.find_by(code: 'gst_verification').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def cinlookup
    puts "======cinlookup========"
    mock_response = JSON.parse(MockService.find_by(code: 'cinlookup').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def corp_profile
    puts "=====corp_profile====="
    mock_response = JSON.parse(MockService.find_by(code: 'corp_profile').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def ocr_kyc
    puts "=====ocr_kyc====="
    mock_response = JSON.parse(MockService.find_by(code: 'ocr_kyc').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def pan
    puts "=====pan====="
    mock_response = JSON.parse(MockService.find_by(code: 'pan').response)
    render nothing: false, status: :ok, json: mock_response
  end
end
