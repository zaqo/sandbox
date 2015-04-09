class AddOperatorToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :operator, :string
    add_column :shifts, :mechanic, :string
    add_column :shifts, :kip, :string
    add_column :shifts, :technolog, :string
    add_column :shifts, :sortament, :string
    add_column :shifts, :flour, :string
    add_column :shifts, :supplier, :string
  end
end
