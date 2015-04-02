class CreateTechparams < ActiveRecord::Migration
  def change
    create_table :techparams do |t|
      t.integer :ttime
      t.integer :waterpc
      t.integer :waterl
      t.integer :flour
      t.integer :tempz
      t.integer :temph1
      t.integer :temph2
      t.integer :tempcyl1
      t.integer :tempcyl2
      t.integer :rotate1
      t.integer :rotate2
      t.integer :press1
      t.integer :press2
      t.integer :temp90
      t.integer :temp51
      t.integer :hum51
      t.integer :temp56_1
      t.integer :hum56_1
      t.integer :temp56_2 
      t.integer :hum56_2
      t.integer :temp56_3
      t.integer :hum56_3
      t.integer :temp56_4
      t.integer :hum56_4
      t.integer :temp56_5
      t.integer :hum56_5

      t.references :shift, index: true
      t.timestamps
    end
  end
end
