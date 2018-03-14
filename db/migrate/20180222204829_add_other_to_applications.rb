class AddOtherToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :other, :string
  end
end
