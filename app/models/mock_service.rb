class MockService < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :service_provider, presence: true
  validates :request, presence: true
  validates :response, presence: true
  serialize :response, JSON
  serialize :request, JSON
end
