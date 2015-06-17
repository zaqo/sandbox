class AddSupplierToGenparams < ActiveRecord::Migration
  def change
    add_column :genparams, :supplier_id, :string
  end
end
