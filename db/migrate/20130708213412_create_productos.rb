class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :precio
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
