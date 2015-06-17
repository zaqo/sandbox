class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :structure
      t.string :inn
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
