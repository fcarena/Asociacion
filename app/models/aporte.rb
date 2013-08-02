class Aporte < ActiveRecord::Base
  attr_accessible :monto, :montosolidaridad,:id, :tipomovimiento, :montomovimiento, :socio_id
  belongs_to :socio
end
