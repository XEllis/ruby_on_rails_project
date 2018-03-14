class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :submission_status, default: "Submitted"
      t.references :application

      t.timestamps
    end
  end
end
