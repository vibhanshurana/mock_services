class Api::V1::FinbitsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    puts "======finbit_login========"
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_login').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def uploadStatement
    puts "=====finbit_upload_statement====="
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_upload_statement').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def summary
    puts "=====finbit_summary====="
    mock_response = JSON.parse(MockService.find_by(code: 'finbit_summary').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def peakUtilizationPerMonth
    puts "=====peakUtilizationPerMonth====="
    mock_response = JSON.parse(MockService.find_by(code: 'peakUtilizationPerMonth').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def topFiveCreditAndDebitInstances
    puts "=====topFiveCreditAndDebitInstances====="
    mock_response = JSON.parse(MockService.find_by(code: 'topFiveCreditAndDebitInstances').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def loanReceivedInstances
    puts "=====loanReceivedInstances====="
    mock_response = JSON.parse(MockService.find_by(code: 'loanReceivedInstances').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def penaltyInstances
    puts "=====penaltyInstances====="
    mock_response = JSON.parse(MockService.find_by(code: 'penaltyInstances').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def internalTransactionsInstances
    puts "=====internalTransactionsInstances====="
    mock_response = JSON.parse(MockService.find_by(code: 'internalTransactionsInstances').response)
    render nothing: false, status: :ok, json: mock_response
  end

  def monthwiseSummary
    puts "=====monthwiseSummary====="
    mock_response = JSON.parse(MockService.find_by(code: 'monthwiseSummary').response)
    render nothing: false, status: :ok, json: mock_response
  end
end