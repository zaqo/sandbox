class CreateShotdowns < ActiveRecord::Migration
  def change
    create_table :shotdowns do |t|
      t.time :start
      t.time :end
      t.string :reason
      t.references :shift, index: true

      t.timestamps
    end
  end
end
