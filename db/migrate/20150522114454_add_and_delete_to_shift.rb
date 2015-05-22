class AddAndDeleteToShift < ActiveRecord::Migration
  def change
	  change_table :shifts do |t|
	  t.remove :technolog,:sortament,:flour,:supplier
	  t.string :operator1,:operator2
	  end

  end
end
