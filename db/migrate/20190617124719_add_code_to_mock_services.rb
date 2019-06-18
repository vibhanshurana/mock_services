class AddCodeToMockServices < ActiveRecord::Migration[5.2]
  def change
    add_column :mock_services, :code, :string
  end
end
