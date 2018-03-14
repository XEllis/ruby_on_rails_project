class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :headquarter
      t.string :size
      t.string :founded
      t.string :industry
      t.integer :revenue
      t.text :synopsis

      t.timestamps
    end

  end
end
