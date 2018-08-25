class Cat02SCambioColumnaId < ActiveRecord::Migration[5.1]
  def change
  	 change_column :cat02s, :id, :string
  end
end
