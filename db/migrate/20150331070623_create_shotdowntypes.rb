class CreateShotdowntypes < ActiveRecord::Migration
  def change
    create_table :shotdowntypes do |t|
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
