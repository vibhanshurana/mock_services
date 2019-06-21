class MockService < ApplicationRecord
  #Validates
  validates :title, presence: true
  validates :url, presence: true
  validates :service_provider, presence: true
  validates :request, presence: true
  validates :response, presence: true

  #Serialize
  serialize :response, JSON
  serialize :request, JSON
end
