class CreateGenparams < ActiveRecord::Migration
  def change
    create_table :genparams do |t|
      t.time :start
      t.time :end
      t.string :sortament
      t.integer :vel90
      t.integer :vel51
      t.integer :fan261
      t.integer :fan262
      t.integer :fan263
      t.integer :fan264
      t.integer :fan265
      t.integer :fan266
      t.integer :waterpc
      t.integer :waterl
      t.integer :flour
      t.integer :watert
      t.integer :headt1
      t.integer :headt2
      t.integer :cylt1
      t.integer :cylt2
      t.integer :rot1
      t.integer :rot2
      t.integer :pressbar1
      t.integer :pressbar2
      t.string :tr90tinteger
      t.integer :tr51t
      t.integer :tr51f
      t.integer :tr561t
      t.integer :tr561f
      t.integer :tr562t
      t.integer :tr562f
      t.integer :tr563t
      t.integer :tr563f
      t.integer :tr564t
      t.integer :tr564f
      t.integer :tr565t
      t.integer :tr565f

      t.timestamps
    end
  end
end
