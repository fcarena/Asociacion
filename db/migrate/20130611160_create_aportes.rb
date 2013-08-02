class CreateAportes < ActiveRecord::Migration
  def change
    create_table :aportes do |t|
      t.float :montomovimiento
      t.float :montosolidaridad
      t.string :tipomovimiento
      t.integer :socio_id

      t.timestamps
    end
  end
end
