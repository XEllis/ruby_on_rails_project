class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.references :job, foreign_key: true, null: true
      t.references :user, foreign_key: true, null: true
      t.string :current_company
      t.string :linkedIn_URL
      t.string :portfolio_URL
      t.text :additional_information
      t.string :gender
      t.string :race
      t.string :veteran_status
      t.string :disability_status

      t.timestamps
    end
  end
end
