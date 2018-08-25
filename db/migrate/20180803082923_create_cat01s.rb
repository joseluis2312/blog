class CreateCat01s < ActiveRecord::Migration[5.1]
  def change
    create_table :cat01s do |t|
      t.string :Codigo
      t.string :Descripcion

      t.timestamps
    end
  end
end
