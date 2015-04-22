class AddPeopleRefToShifts < ActiveRecord::Migration
  def change
    add_reference :shifts, :person, index: true
  end
end
