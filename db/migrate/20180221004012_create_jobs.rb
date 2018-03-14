class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.references :company, foreign_key: true, null: true, on_delete: :cascade
      t.references :user, foreign_key: true, null: true, on_delete: :cascade
      t.string :description
      t.string :employment_type
      t.text :responsibilities
      t.text :requirements
      
      t.timestamps
    end
  end
end
