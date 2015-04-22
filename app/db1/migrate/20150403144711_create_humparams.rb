class CreateHumparams < ActiveRecord::Migration
  def change
    create_table :humparams do |t|
      t.time :htime
      t.integer :tr90
      t.integer :tr51
      t.integer :tr56_1
      t.integer :tr56_2
      t.integer :tr56_3
      t.integer :tr56_4
      t.integer :tr56_5

      t.references :shift, index: true
      t.timestamps
    end
  end
end
