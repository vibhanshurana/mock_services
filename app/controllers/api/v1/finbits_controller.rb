class Api::V1::FinbitsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    puts "======finbit_login========"
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_login').response)
    render nothing: false, status: :ok, json: mock_response
    # {"status": "SUCCESS", "access_token": "i8ldiseqait0ne4vakvkm0ugbd56sjm0", "message": "Use this token for all your further queries. Without it those won't be authenticated. Treat it as password and never share it with anyone."}
  end

  def uploadStatement
    puts "=====finbit_upload_statement====="
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_upload_statement').response)
    render nothing: false, status: :ok, json: mock_response
    # {"status"=>"SUCCESS", "accountDetails"=>"M/S. PRATIK COMPUTER PVT LTD | HDFC | 50200016206392", "message"=>"Keep the accountUID safe and treat it like as password. Use it to access any further details about this Bank Account.", "accountUID"=>"1n7k0phso5ps7bi94lug9ulsfr", "parseStatus"=>"CATEGORISED", "parseMessage"=>"Statement(s) have been parsed successfully."}
  end

  def summary
    puts "=====finbit_summary====="
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_summary').response)
    render nothing: false, status: :ok, json: mock_response
    # {"status"=>"SUCCESS", "documentURL"=>"https://finbit.page.link/GsocYBCyxtK9wLiZ9"}
  end
end
