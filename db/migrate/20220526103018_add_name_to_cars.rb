class AddNameToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :name, :string
  end
end
