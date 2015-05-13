class AddProfToPeople < ActiveRecord::Migration
  def change
    add_column :people, :prof, :string
  end
end
