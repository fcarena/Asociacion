class CreateLoanDetails < ActiveRecord::Migration
  def change
    create_table :loan_details do |t|
      t.float :montocuota
      t.float :amortizacion
      t.float :interes
      t.datetime :fechavcuota
      t.string :estado
      t.datetime :fechapago
      t.float :saldoactual
      t.integer :prestamo_id
      t.string :cancelacion_cuota
      t.integer :numerocuota
      
      t.timestamps
    end
  end
end
