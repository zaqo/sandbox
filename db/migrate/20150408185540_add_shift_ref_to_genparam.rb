class AddShiftRefToGenparam < ActiveRecord::Migration
  def change
    add_reference :genparams, :shift, index: true
  end
end
