class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nombre
      t.string :apellido
      t.string :ci
      t.string :tel
      t.string :direccion
      t.string :tipo
      t.integer :departament_id
      t.string :correo

      t.timestamps
    end
  end
end
