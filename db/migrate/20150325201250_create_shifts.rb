class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.int :time
      t.int :manager

      t.timestamps
    end
  end
end
