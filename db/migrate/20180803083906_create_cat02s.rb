class CreateCat02s < ActiveRecord::Migration[5.1]
  def change
    create_table :cat02s do |t|
      t.string :Codigo
      t.string :Descripcion

      t.timestamps
    end
  end
end
