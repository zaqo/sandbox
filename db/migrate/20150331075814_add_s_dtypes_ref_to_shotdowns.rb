class AddSDtypesRefToShotdowns < ActiveRecord::Migration
  def change
    add_reference :shotdowns, :shotdowntypes, index: true
  end
end
