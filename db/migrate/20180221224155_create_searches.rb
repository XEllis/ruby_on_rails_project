class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :headquarter
      t.string :size
      t.string :industry
      t.integer :min_revenue
      t.integer :max_revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
