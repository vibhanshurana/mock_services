class Api::V1::FinbitsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    puts "======login========" 
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_login').response)
    render nothing: false, status: :ok, json: mock_response
  end
end
