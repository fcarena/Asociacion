class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.float :montoprestamo
      t.integer :socio_id
      t.integer :cantcuotas
      t.float :tasainteres
      t.string :cancelacion
      t.float :ganancia_generada
      t.string :sistema
      t.timestamps
    end
  end
end
