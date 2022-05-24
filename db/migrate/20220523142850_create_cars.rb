class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :model_type
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
