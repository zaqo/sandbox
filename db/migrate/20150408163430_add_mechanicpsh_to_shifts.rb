class AddMechanicpshToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :mechanicpsh, :string
  end
end
