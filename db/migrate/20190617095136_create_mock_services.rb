class CreateMockServices < ActiveRecord::Migration[5.2]
  def change
    create_table :mock_services do |t|
      t.string :title
      t.string :url
      t.string :service_provider
      t.text :request
      t.text :response

      t.timestamps
    end
  end
end
