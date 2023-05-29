class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :home_type
      t.integer :total_occupancy
      t.string :address
      t.float :price
      t.text :summary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
