class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
