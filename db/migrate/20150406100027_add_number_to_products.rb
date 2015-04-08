class AddNumberToProducts < ActiveRecord::Migration
  def change
    add_column :products, :number, :integer
    add_column :products, :name_it, :string
  end
end
