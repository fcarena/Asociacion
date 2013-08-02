class LoanDetail < ActiveRecord::Base
  attr_accessible :estado, :fechapago, :fechavcuota, :montocuota ,:prestamo_id, :interes, :amortizacion, :saldoactual, :numerocuota
  belongs_to :prestamo

end
