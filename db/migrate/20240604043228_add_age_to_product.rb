class AddAgeToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :amount, :string
  end
end
