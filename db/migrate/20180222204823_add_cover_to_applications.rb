class AddCoverToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :cover, :string
  end
end
