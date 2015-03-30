class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :time
      t.string :manager

      t.timestamps
    end
  end
end
